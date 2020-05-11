#!/bin/bash


echo "Etape 1/6 : Suppression du cache (si il existe)"
rm /var/run/wpa_supplicant/wlan0 2> /dev/null

echo "Etape 2/6 : Arret des processus wpa_supplicant"
pkill wpa_supplicant

echo "Etape 3/6 : Creation du fichier de configuration hark.res"
touch /root/hark.res
echo "ctrl_interface=/var/run/wpa_supplicant" > /root/hark.res

echo "Etape 4/6 : Lancement du processus wpa_supplicant"
wpa_supplicant -i wlan0 -c /root/hark.res > /dev/null &

echo "Etape 5/6 : Recherche de reseaux wps"
echo "A vous de jouer : tapez \"wpa_cli -wlan0 wps_pbc"
echo "Une fois le reseau trouve, lance le script hark_suite.sh"
