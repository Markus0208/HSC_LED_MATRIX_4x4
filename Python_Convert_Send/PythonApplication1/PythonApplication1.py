from random import choice
from PIL import Image
import csv
import socket
import struct
import numpy as np
import os

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

def clear_screen():
    # Überprüfen Sie das Betriebssystem und führen Sie den entsprechenden Befehl aus
    if os.name == 'nt':  # Für Windows
        os.system('cls')
    else:  # Für Unix/Linux/Mac
        os.system('clear')

def adjust_brightness(pixel_array, factor):
    """
    Skaliert die Helligkeit des Bildes basierend auf dem angegebenen Faktor.
    :param pixel_array: 2D-Array mit Hex-Farbwerten
    :param factor: Skalierungsfaktor (0.01 bis 1.0)
    :return: Angepasstes 2D-Pixel-Array
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

def main():
    server_ip = "192.168.1.10"
    server_port = 7
    clear_screen()
    

    while True:
        print("Bild waehlen:")
        print("1. Pickachu")
        print("2. Evoli")
        print("3. Relaxo")
        print("4. Frau")
        print("5. Frau rothaarig")
        print("6. Schwert")
        print("7. Vogel")
        print("8. Mario")
        print("9. Beenden")

        choice = input("Waehle das Bild: ")
        if choice == "1":
            input_image = "pickachu.png"
        elif choice == "2":
            input_image = "evoli.png"
        elif choice == "3":
            input_image = "relaxo.jpg"
        elif choice == "4":
            input_image = "frau.webp"
        elif choice == "5":
            input_image = "frau_rothaarig.png"
        elif choice == "6":
            input_image = "schwert.jpg"
        elif choice == "7":
            input_image = "vogel.png"
        elif choice == "8":
            input_image = "earth.jpg"
        elif choice == "9":
            input_image = "schwarz.png"
        else:
            print("Ungueltige Eingabe. Bitte waehle eine Zahl von 1 bis 9.")


        # Beispielaufruf der Funktion
        resize_image(input_image, "ausgabe.png", 64, 64)
        output_csv_path = "pixelwerte.csv"  # can be deleted later
        pixel_array = image_to_pixel_array("ausgabe.png", output_csv_path)
        pixel_array=adjust_brightness(pixel_array, 0.3)
        #array_to_image(pixel_array, "output_image.png") # can be deleted (was just for testing)
        
        
        # if pixel_array:
        #     if pixel_array:  
        #     # Ausgabe des gesamten 2D-Arrays  
        #         for row in pixel_array:  
        #             print(row)
            
        send_large_array_to_server(server_ip, server_port, pixel_array)
        
        
       
        
   
if __name__ == "__main__":
    main()

# todo
# Funktion die die erstellten Pixelarrays mit Faktor 0,01 - 1 multipliziert (Helligkeitsanpassung)
# Frontend für Auswahl des Bildes
# Schieberegler für Helligkeit
# Option zur Auswahl der Bildgröße (32x32 48x48 64x64 + Resize Parameter anpassen)
# Option zur Auswahl des Servers (Ip + Port, default: 192.168.165.10 & Port 7)
# Send Cyclic Data (wenn send Cyclic is checked, abfrage in welchem intervall gesendet werden soll + Stop funktion)
# Stop Funktion (send empty array (0x00) to stop the server))
# Ordner auswahlmöglichkeit -> alle bilder im Ordner werden dargestellt-> entweder alle zyklisch durchlaufen oder ein ausgewähltes darstellen
