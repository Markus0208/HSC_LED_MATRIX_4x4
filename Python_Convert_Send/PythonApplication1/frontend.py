import tkinter as tk
from tkinter import filedialog, ttk, PhotoImage
from PIL import Image, ImageTk
import os
import threading
import time
import csv
import socket
import struct
import numpy as np
import math

from backend import resize_image, image_to_pixel_array, array_to_image, send_large_array_to_server, adjust_brightness, stop_function

class ImageProcessingApp:
    def __init__(self, master):
        self.master = master
        self.master.title("Image Processing Application")
        self.master.geometry("800x600")

        self.setup_ui()

        self.selected_image_paths = []
        self.pixel_arrays = []
        self.is_sending_cyclic = False
        self.cyclic_thread = None
        self.cyclic_enabled = False

    def setup_ui(self):
        icon = PhotoImage(file="pickachu.png")  
        self.master.iconphoto(False, icon)

        main_frame = ttk.Frame(self.master)
        main_frame.pack(fill=tk.BOTH, expand=True)

        left_frame = ttk.Frame(main_frame, width=300)
        left_frame.pack(side=tk.LEFT, fill=tk.Y, padx=10, pady=10)
        left_frame.pack_propagate(False)  # Prevent the frame from shrinking

        right_frame = ttk.Frame(main_frame)
        right_frame.pack(side=tk.RIGHT, fill=tk.BOTH, expand=True, padx=10, pady=10)
        
       

        # Left frame contents (Settings)
        ttk.Button(left_frame, text="Select Image", command=self.select_image).pack(pady=5, fill=tk.X)
        ttk.Button(left_frame, text="Select Folder", command=self.select_folder).pack(pady=5, fill=tk.X)

        # Brightness slider and label
        brightness_frame = ttk.Frame(left_frame)
        brightness_frame.pack(fill=tk.X, pady=5)
        ttk.Label(brightness_frame, text="Brightness:").pack(side=tk.LEFT)
        self.brightness_value_label = ttk.Label(brightness_frame, text="100%")
        self.brightness_value_label.pack(side=tk.RIGHT)

        self.brightness_var = tk.DoubleVar(value=100)
        self.brightness_slider = ttk.Scale(
            left_frame, 
            from_=1, 
            to=100, 
            variable=self.brightness_var, 
            command=self.update_brightness
        )
        self.brightness_slider.pack(fill=tk.X)

        ttk.Label(left_frame, text="Image Size:").pack()
        self.size_var = tk.StringVar(value="64x64")
        ttk.Combobox(left_frame, textvariable=self.size_var, values=["32x32", "48x48", "64x64"]).pack(fill=tk.X)

        ttk.Label(left_frame, text="Server IP:").pack()
        self.server_ip_var = tk.StringVar(value="192.168.1.10")
        ttk.Entry(left_frame, textvariable=self.server_ip_var).pack(fill=tk.X)

        ttk.Label(left_frame, text="Server Port:").pack()
        self.server_port_var = tk.IntVar(value=7)
        ttk.Entry(left_frame, textvariable=self.server_port_var).pack(fill=tk.X)

        self.cyclic_var = tk.BooleanVar(value=False)
        ttk.Checkbutton(left_frame, text="Send Cyclic", variable=self.cyclic_var, command=self.toggle_cyclic_send).pack(fill=tk.X)

        self.interval_frame = ttk.Frame(left_frame)
        ttk.Label(self.interval_frame, text="Interval (seconds):").pack(side=tk.LEFT)
        self.interval_var = tk.IntVar(value=1)
        self.interval_entry = ttk.Entry(self.interval_frame, textvariable=self.interval_var)
        self.interval_entry.pack(side=tk.RIGHT, fill=tk.X, expand=True)

        ttk.Button(left_frame, text="Send Image", command=self.send_image).pack(pady=5, fill=tk.X)
        ttk.Button(left_frame, text="Stop", command=self.stop_sending).pack(pady=5, fill=tk.X)

        self.canvas = tk.Canvas(right_frame)
        self.canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        self.scrollbar = ttk.Scrollbar(right_frame, orient=tk.VERTICAL, command=self.canvas.yview)
        self.scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

        self.canvas.configure(yscrollcommand=self.scrollbar.set)
        self.canvas.bind('<Configure>', lambda e: self.canvas.configure(scrollregion=self.canvas.bbox("all")))

        self.image_frame = ttk.Frame(self.canvas)
        self.canvas.create_window((0, 0), window=self.image_frame, anchor="nw")


    def update_brightness(self, value):
        brightness_value = int(float(value))
        self.brightness_value_label.config(text=f"{brightness_value}%")

    def select_image(self):
        image_paths = filedialog.askopenfilenames(filetypes=[("Image files", "*.png;*.jpg;*.jpeg;*.webp")])
        if image_paths:
            self.selected_image_paths = list(image_paths)
            self.display_images()

    def select_folder(self):
        folder_path = filedialog.askdirectory(title="Choose a folder")
        if folder_path:
            image_files = [f for f in os.listdir(folder_path) if f.lower().endswith(('.png', '.jpg', '.jpeg', '.webp'))]
            self.selected_image_paths = [os.path.join(folder_path, f) for f in image_files]
            self.display_images()



    def display_images(self):
        # Clear previous images
        for widget in self.image_frame.winfo_children():
            widget.destroy()

        # Display each selected image as a thumbnail in a grid
        row = 0
        col = 0
        for image_path in self.selected_image_paths:
            img = Image.open(image_path)
            img.thumbnail((100, 100))  # Set thumbnail size
            photo = ImageTk.PhotoImage(img)

            label = ttk.Label(self.image_frame, image=photo)
            label.image = photo  # Keep a reference to avoid garbage collection
            label.grid(row=row, column=col, padx=5, pady=5)

            col += 1
            if col == 4:  # Move to the next row after 4 images
                col = 0
                row += 1

        # Update the scroll region
        self.image_frame.update_idletasks()
        self.canvas.configure(scrollregion=self.canvas.bbox("all"))

    

    def toggle_cyclic_send(self):
        self.cyclic_enabled = self.cyclic_var.get()
        if self.cyclic_enabled:
            self.interval_frame.pack(fill=tk.X)
        else:
            self.interval_frame.pack_forget()

    def send_image(self):
        if self.selected_image_paths:
            self.send_single_image(self.selected_image_paths[0])  # Sende das erste Bild
            
            if self.cyclic_enabled and not self.is_sending_cyclic:
                self.start_cyclic_send()

    def send_single_image(self, image_path):
        size = tuple(map(int, self.size_var.get().split('x')))
        resize_image(image_path, "temp_resized.png", size[0], size[1])
        pixel_array = image_to_pixel_array("temp_resized.png", "temp_pixelwerte.csv")
        server_ip = self.server_ip_var.get()
        server_port = self.server_port_var.get()
        pixel_array = adjust_brightness(pixel_array,  (0.24 + (0.75* self.brightness_var.get()/ 100)))
        send_large_array_to_server(server_ip, server_port, pixel_array)

    def start_cyclic_send(self):
        if not self.is_sending_cyclic:
            self.is_sending_cyclic = True
            self.cyclic_thread = threading.Thread(target=self.cyclic_send_task)
            self.cyclic_thread.start()

    def cyclic_send_task(self):
        image_index = 0
        while self.is_sending_cyclic:
            self.send_single_image(self.selected_image_paths[image_index])
            image_index = (image_index + 1) % len(self.selected_image_paths)
            time.sleep(self.interval_var.get())

    def stop_sending(self):
        server_ip = self.server_ip_var.get()
        server_port = self.server_port_var.get()
        stop_function(server_ip, server_port)
        self.is_sending_cyclic = False
        if self.cyclic_thread:
            self.cyclic_thread.join()
        
       
        
        
        


def run_app():
    root = tk.Tk()
    app = ImageProcessingApp(root)
    root.mainloop()