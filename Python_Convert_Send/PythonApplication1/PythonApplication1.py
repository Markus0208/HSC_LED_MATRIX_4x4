from frontend import run_app
         
if __name__ == "__main__":
    run_app()



# todo
# Funktion die die erstellten Pixelarrays mit Faktor 0,01 - 1 multipliziert (Helligkeitsanpassung) -- done
# Stop Funktion (send empty array (0x00) to stop the server))   -- done
# Schieberegler für Helligkeit -- done
# Option zur Auswahl der Bildgröße (32x32 48x48 64x64 + Resize Parameter anpassen) -- done
# Option zur Auswahl des Servers (Ip + Port, default: 192.168.165.10 & Port 7) -- done
# Send Cyclic Data (wenn send Cyclic is checked, abfrage in welchem intervall gesendet werden soll + Stop funktion) -- done
# Ordner auswahlmöglichkeit -> alle bilder im Ordner werden dargestellt-> entweder alle zyklisch durchlaufen oder ein ausgewähltes darstellen --done
# Aufräumen - Entfernen aller Deutschen Kommentare, Texte und auskommentierten Codeschnipsel -- done
# paar Kommentare zu den funktionen (englisch) -- done
# Anpassen der Frontend Boxen (Zeitintervall unter send cyclic ....) -- done
# Python Backend funktionen anpassen, sodass keine unnötigen Dateien erzeugt werden -- done
# begrenzen des Cyclic Timers auf 1 sekunde -- done



# Select Image weg + Auswahl eines einzelnen Bildes aus der Auflistung rechts eventuell Maus scrooling für die Bilder einfügen -- done
# Aktuell ist es möglich mehrere Bilder auszuwählen dadurch kommts zu einem Fehler wenn gesendet wird -- should be done
# In C Funktion für 3x3 Matrizen -- done