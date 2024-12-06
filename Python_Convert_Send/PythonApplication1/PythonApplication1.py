from PIL import Image
import csv
import socket
import struct
import numpy as np

def resize_image(input_path, output_path, new_width, new_height):
    
    try:
        # Bild oeffnen
        with Image.open(input_path) as img:
            # Bild skalieren mit LANCZOS-Filter für hohe Qualität
            resized_img = img.resize((new_width, new_height), Image.LANCZOS)
            # Bild speichern
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
                    # In das gewuenschte Format 0xGGRRBB konvertieren
                    hex_color = f"0x{g:02X}{r:02X}{b:02X}"
                    row.append(hex_color)
                pixel_array.append(row)

            # CSV-Datei speichern
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

     # Nagle-Algorithmus deaktivieren
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


def array_to_image(array, output_file="output_image.png"):
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






server_ip = "192.168.1.10"
server_port = 7

# Beispielaufruf der Funktion
resize_image("eingabe2.PNG", "ausgabe.png", 64, 64)


output_csv_path = "pixelwerte.csv"
pixel_array = image_to_pixel_array("ausgabe.png", output_csv_path)
array_to_image(pixel_array, "output_image.png")
if pixel_array:
    if pixel_array:  
       # Ausgabe des gesamten 2D-Arrays  
       for row in pixel_array:  
           print(row)
    # Ausgabe der ersten Zeile des Arrays zur Kontrolle
   # print(pixel_array[0])
#send_array_to_server(server_ip, server_port, pixel_array)
send_large_array_to_server(server_ip, server_port, pixel_array)
   



































