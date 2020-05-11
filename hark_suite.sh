#!/bin/bash

echo "Etape 6/6 : Enregistrement des resultats"
wpa_cli -i wlan0 set update_config 1
wpa_cli -i wlan0 save_config

echo "Les resultats sont enregistree dans le fichier hark.res"

macchanger -r wlan0

wpa_supplicant.sh
