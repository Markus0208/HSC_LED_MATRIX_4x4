
from backend import resize_image, image_to_pixel_array, array_to_image, send_large_array_to_server, adjust_brightness
from frontend import run_app


def main():


    


    server_ip = "192.168.1.10"
    server_port = 7

    

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
        resize_image(input_image, "ausgabe.png", 32, 32)
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
    run_app()








    #main()

# todo
# Funktion die die erstellten Pixelarrays mit Faktor 0,01 - 1 multipliziert (Helligkeitsanpassung) -- done
# Stop Funktion (send empty array (0x00) to stop the server))   -- done
# Backend funktionen anpassen, sodass keine unnötigen Dateien erzeugt werden

# Frontend für Auswahl des Bildes
# Schieberegler für Helligkeit
# Option zur Auswahl der Bildgröße (32x32 48x48 64x64 + Resize Parameter anpassen)
# Option zur Auswahl des Servers (Ip + Port, default: 192.168.165.10 & Port 7)
# Send Cyclic Data (wenn send Cyclic is checked, abfrage in welchem intervall gesendet werden soll + Stop funktion)
# Ordner auswahlmöglichkeit -> alle bilder im Ordner werden dargestellt-> entweder alle zyklisch durchlaufen oder ein ausgewähltes darstellen

