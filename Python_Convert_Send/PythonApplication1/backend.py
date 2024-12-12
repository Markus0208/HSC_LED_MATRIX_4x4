from random import choice
from PIL import Image
import csv
import socket
import struct
import numpy as np

def image_to_pixel_array(input_path, new_width, new_height):#, csv_output_path):
    """
    Converts an image to a 2D array of hex color values in 0xGGRRBB format.
    
    :param input_path: Path to the input image file.
    :param new_width: The width to resize the image to.
    :param new_height: The height to resize the image to.
    :return: 2D array of hex color values.
    """
 
    try:
        with Image.open(input_path) as img:
            resized_img = img.resize((new_width, new_height), Image.LANCZOS)
            img = resized_img.convert("RGB")
            width, height = img.size
            pixel_array = []

            for y in range(height):
                row = []
                for x in range(width):
                    r, g, b = img.getpixel((x, y))
                    # convert to 0xGGRRBB format
                    hex_color = f"0x{g:02X}{r:02X}{b:02X}"
                    row.append(hex_color)
                pixel_array.append(row)

            # # Save Pixel Array to CSV file
            # with open(csv_output_path, mode='w', newline='') as csvfile:
            #     csv_writer = csv.writer(csvfile)
            #     for row in pixel_array:
            #         csv_writer.writerow(row)

            # print(f"pixelarray saved in {csv_output_path}.")
            return pixel_array

    except Exception as e:
        print(f"Error while proccesing picture: {e}")
        return None


def hex_to_uint32(hex_value):
    """
    Converts a hex color value to a 32-bit unsigned integer.
    
    :param hex_value: Hex color value in 0xGGRRBB format.
    :return: 32-bit unsigned integer.
    """
    return int(hex_value, 16)

def send_large_array_to_server(server_ip, server_port, data_array, max_block_size=256):
    """
    Sends a large 2D array of hex color values to a server in chunks.
    
    :param server_ip: IP address of the server.
    :param server_port: Port number of the server.
    :param data_array: 2D array of hex color values.
    :param max_block_size: Maximum size of each chunk to send.
    """
  
    uint32_array = [hex_to_uint32(value) for row in data_array for value in row]
    total_size = len(uint32_array)
    np_array = np.array(uint32_array, dtype=np.uint32)

    chunks = [np_array[i:i + max_block_size] for i in range(0, total_size, max_block_size)]
      
    server_address = (server_ip, server_port)
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

     # Nagle-algorithm
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


def stop_function(server_ip, server_port):
    """
    Sends a stop signal to the server by sending a predefined 2D array.
    
    :param server_ip: IP address of the server.
    :param server_port: Port number of the server.
    """

    data_array = [["0x010101" for _ in range(64)] for _ in range(64)]
    send_large_array_to_server(server_ip, server_port, data_array)

# Get Image from Array (testing)
def array_to_image(array, output_file="output_image.png"): 
    """
    Converts a 2D array of hex color values to an image and saves it.
    
    :param array: 2D array of hex color values.
    :param output_file: Path to save the output image file.
    """

    height = len(array)
    width = len(array[0]) if height > 0 else 0
    image = Image.new("RGB", (width, height))
    for y in range(height):
        for x in range(width):
            hex_value = int(array[y][x], 16)
            green = (hex_value >> 16) & 0xFF
            red = (hex_value >> 8) & 0xFF
            blue = hex_value & 0xFF
            image.putpixel((x, y), (red, green, blue))
    image.save(output_file)


def adjust_brightness(pixel_array, factor):
    """
    Scales the brightness of the image based on the given factor.
    :param pixel_array: 2D array with hex color values
    :param factor: Scaling factor (0.01 to 1.0)
    :return: Adjusted 2D pixel array
    """

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