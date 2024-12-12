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
from backend import image_to_pixel_array, array_to_image, send_large_array_to_server, adjust_brightness, stop_function

class ImageProcessingApp:
    def __init__(self, master):
        """
        Initializes the ImageProcessingApp with the given master window.
        
        :param master: The master window for the application.
        """

        self.master = master
        self.master.title("Image Processing Application")
        self.master.geometry("800x600")
        self.setup_ui()
        self.selected_image_paths = []
        self.pixel_arrays = []
        self.is_sending_cyclic = False
        self.cyclic_thread = None
        self.cyclic_enabled = False
        self.selected_images = set()  # Set to track selected images

    def setup_ui(self):
        """
        Sets up the user interface for the application.
        """

        main_frame = ttk.Frame(self.master)
        main_frame.pack(fill=tk.BOTH, expand=True)

        left_frame = ttk.Frame(main_frame, width=300)
        left_frame.pack(side=tk.LEFT, fill=tk.Y, padx=10, pady=10)
        left_frame.pack_propagate(False)

        right_frame = ttk.Frame(main_frame)
        right_frame.pack(side=tk.RIGHT, fill=tk.BOTH, expand=True, padx=10, pady=10)

        ttk.Button(left_frame, text="Select Folder", command=self.select_folder).pack(pady=5, fill=tk.X)

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
        vcmd = (self.master.register(self.validate_interval), '%P')
        self.interval_entry = ttk.Entry(self.interval_frame, textvariable=self.interval_var, validate="key", validatecommand=vcmd)
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

        # Add mouse scrolling support
        self.canvas.bind_all("<MouseWheel>", lambda event: self.canvas.yview_scroll(-1 * (event.delta // 120), "units"))

        # Create a style for selected images
        self.style = ttk.Style()
        self.style.configure('Selected.TLabel', borderwidth=3, relief="solid")

    def update_brightness(self, value):
        """
        Updates the brightness label based on the slider value.
        
        :param value: The current value of the brightness slider.
        """

        brightness_value = int(float(value))
        self.brightness_value_label.config(text=f"{brightness_value}%")

    def select_folder(self):
        """
        Opens a file dialog to select a folder and displays the images in the folder.
        """

        folder_path = filedialog.askdirectory(title="Choose a folder")
        if folder_path:
            image_files = [f for f in os.listdir(folder_path) if f.lower().endswith(('.png', '.jpg', '.jpeg', '.webp'))]
            self.selected_image_paths = [os.path.join(folder_path, f) for f in image_files]
            self.display_images()

    def display_images(self):
        """
        Displays the images from the selected folder in the UI.
        """

        for widget in self.image_frame.winfo_children():
            widget.destroy()
        self.selected_images.clear()

        row, col = 0, 0
        for image_path in self.selected_image_paths:
            img = Image.open(image_path)
            img.thumbnail((100, 100))
            photo = ImageTk.PhotoImage(img)
            label = ttk.Label(self.image_frame, image=photo)
            label.image = photo
            label.grid(row=row, column=col, padx=5, pady=5)
            label.bind("<Button-1>", lambda e, path=image_path, widget=label: self.toggle_image_selection(path, widget))

            col += 1
            if col == 4:
                col = 0
                row += 1

        self.image_frame.update_idletasks()
        self.canvas.configure(scrollregion=self.canvas.bbox("all"))

    def toggle_image_selection(self, image_path, widget):
        """
        Toggles the selection of an image.
        
        :param image_path: The path of the image to toggle.
        :param widget: The widget representing the image.
        """

        # Toggle selection of an image
        if image_path in self.selected_images:
            self.selected_images.remove(image_path)
            widget.configure(style='TLabel')
        else:
            self.selected_images.add(image_path)
            widget.configure(style='Selected.TLabel')

    def toggle_cyclic_send(self):
        """
        Toggles the cyclic send option and shows/hides the interval entry.
        """

        self.cyclic_enabled = self.cyclic_var.get()
        if self.cyclic_enabled:
            self.interval_frame.pack(before=self.master.nametowidget(self.interval_frame.winfo_parent()).children['!button2'], fill=tk.X)
        else:
            self.interval_frame.pack_forget()

    def validate_interval(self, new_value):
        """
        Validates the interval entry to ensure it is a positive integer.
        
        :param new_value: The new value of the interval entry.
        :return: True if the value is valid, False otherwise.
        """

        if new_value == "":
            return True
        try:
            value = int(new_value)
            return value >= 1
        except ValueError:
            return False

    def send_image(self):
        """
        Sends the selected image(s) to the server.
        """

        if self.selected_images:  # Send only selected images
            for image_path in self.selected_images:
                self.send_single_image(image_path)
        elif self.selected_image_paths:  # Send all images cyclically if none are selected
            if self.cyclic_enabled and not self.is_sending_cyclic:
                self.start_cyclic_send()
            else:
                self.send_single_image(self.selected_image_paths[0])

    def send_single_image(self, image_path):
        """
        Sends a single image to the server.
        
        :param image_path: The path of the image to send.
        """

        size = tuple(map(int, self.size_var.get().split('x')))
        #resize_image(image_path, "temp_resized.png", size[0], size[1])
        pixel_array = image_to_pixel_array(image_path, size[0], size[1])#, "temp_pixelwerte.csv") for csv output
        server_ip = self.server_ip_var.get()
        server_port = self.server_port_var.get()
        pixel_array = adjust_brightness(pixel_array, (0.24 + (0.75 * self.brightness_var.get() / 100)))
        send_large_array_to_server(server_ip, server_port, pixel_array)

    def start_cyclic_send(self):
        """
        Starts sending images cyclically to the server.
        """

        if not self.is_sending_cyclic:
            self.is_sending_cyclic = True
            self.cyclic_thread = threading.Thread(target=self.cyclic_send_task)
            self.cyclic_thread.start()

    def cyclic_send_task(self):
        """
        Task to send images cyclically to the server.
        """

        image_index = 0
        while self.is_sending_cyclic:
            self.send_single_image(self.selected_image_paths[image_index])
            image_index = (image_index + 1) % len(self.selected_image_paths)
            time.sleep(self.interval_var.get())

    def stop_sending(self):
        """
        Stops sending images to the server.
        """

        server_ip = self.server_ip_var.get()
        server_port = self.server_port_var.get()
        stop_function(server_ip, server_port)
        self.is_sending_cyclic = False
        if self.cyclic_thread:
            self.cyclic_thread.join()

def run_app():
    """
    Runs the Image Processing Application.
    """

    root = tk.Tk()
    app = ImageProcessingApp(root)
    root.mainloop()