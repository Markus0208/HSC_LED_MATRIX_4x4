import tkinter as tk
from tkinter import filedialog, ttk
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


def resize_image(input_path, output_path, new_width, new_height):
    try:
        with Image.open(input_path) as img:
            resized_img = img.resize((new_width, new_height), Image.LANCZOS)
            resized_img.save(output_path)
            print(f"Bild erfolgreich auf {new_width}x{new_height} skaliert und gespeichert als {output_path}.")
    except Exception as e:
        print(f"Fehler beim Skalieren des Bildes: {e}")

def image_to_pixel_array(input_path, csv_output_path):
    try:
        with Image.open(input_path) as img:
            img = img.convert("RGB")
            width, height = img.size
            pixel_array = []

            for y in range(height):
                row = []
                for x in range(width):
                    r, g, b = img.getpixel((x, y))
                    hex_color = f"0x{g:02X}{r:02X}{b:02X}"
                    row.append(hex_color)
                pixel_array.append(row)

            with open(csv_output_path, mode='w', newline='') as csvfile:
                csv_writer = csv.writer(csvfile)
                for row in pixel_array:
                    csv_writer.writerow(row)

            print(f"Pixelwerte wurden erfolgreich in {csv_output_path} gespeichert.")
            return pixel_array

    except Exception as e:
        print(f"Fehler beim Verarbeiten des Bildes: {e}")
        return None

def hex_to_uint32(hex_value):
    return int(hex_value, 16)

def send_large_array_to_server(server_ip, server_port, data_array, max_block_size=256):
    uint32_array = [hex_to_uint32(value) for row in data_array for value in row]
    total_size = len(uint32_array)
    np_array = np.array(uint32_array, dtype=np.uint32)

    chunks = [np_array[i:i + max_block_size] for i in range(0, total_size, max_block_size)]
      
    server_address = (server_ip, server_port)
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)

    sock.connect(server_address)

    try:
        for chunk_id, chunk in enumerate(chunks):
            block_size = len(chunk) 
            block_header = block_size.to_bytes(4, byteorder='big')
            block_payload = block_header + chunk.astype(np.uint32).tobytes() 
            sock.sendall(block_payload)

        end_signal = (0).to_bytes(4, byteorder='big')
        sock.sendall(end_signal)
    
    finally:
        sock.close()

def adjust_brightness(pixel_array, factor):
    adjusted_array = []
    for row in pixel_array:
        adjusted_row = []
        for hex_value in row:
            int_value = int(hex_value, 16)
            green = int(((int_value >> 16) & 0xFF) * factor)
            red = int(((int_value >> 8) & 0xFF) * factor)
            blue = int((int_value & 0xFF) * factor)
            green, red, blue = [min(255, max(0, c)) for c in (green, red, blue)]
            adjusted_row.append(f"0x{green:02X}{red:02X}{blue:02X}")
        adjusted_array.append(adjusted_row)
    return adjusted_array

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
            from_=30, 
            to=100, 
            variable=self.brightness_var, 
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

        self.interval_var = tk.IntVar(value=1)
        ttk.Label(left_frame, text="Interval (seconds):").pack()
        ttk.Entry(left_frame, textvariable=self.interval_var).pack(fill=tk.X)

        ttk.Button(left_frame, text="Send Image", command=self.send_image).pack(pady=5, fill=tk.X)
        ttk.Button(left_frame, text="Stop", command=self.stop_sending).pack(pady=5, fill=tk.X)

        # Right frame contents (Image display)
        self.canvas = tk.Canvas(right_frame)
        self.canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

        self.scrollbar = ttk.Scrollbar(right_frame, orient=tk.VERTICAL, command=self.canvas.yview)
        self.scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

        self.canvas.configure(yscrollcommand=self.scrollbar.set)
        self.canvas.bind('<Configure>', lambda e: self.canvas.configure(scrollregion=self.canvas.bbox("all")))

        self.image_frame = ttk.Frame(self.canvas)
        self.canvas.create_window((0, 0), window=self.image_frame, anchor="nw")

    def select_image(self):
        image_paths = filedialog.askopenfilenames(filetypes=[("Image files", "*.png;*.jpg;*.jpeg;*.webp")])
        if image_paths:
            self.selected_image_paths = list(image_paths)
            self.display_images()

    def select_folder(self):
        folder_path = filedialog.askdirectory()
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
        pixel_array = adjust_brightness(pixel_array, self.brightness_var.get() / 100)
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
        self.is_sending_cyclic = False
        if self.cyclic_thread:
            self.cyclic_thread.join()
        
       
        server_ip = self.server_ip_var.get()
        server_port = self.server_port_var.get()
        
        stop_function(server_ip, server_port)


def run_app():
    root = tk.Tk()
    app = ImageProcessingApp(root)
    root.mainloop()