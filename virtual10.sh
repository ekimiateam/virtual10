#!/bin/bash

echo "bonjours voulez vous telecharger windows 10" 

zenity --question \
--title "Vitual10" \
--text "Voulez vous telecharger et lancer Virtual 10"
 
if [ $? = 0 ]
then
	echo "OUI ! Telechargement  "
    # wget http://ftp.free.fr/mirrors/ftp.ubuntu.com/releases/20.04.2.0/ubuntu-20.04.2.0-desktop-amd64.iso -O /home/$USER/Documents/image.iso
	sleep 3

    echo " Installation de VirtualBox "
    sudo apt install virtualbox

   	echo "OUI ! import du fichier OVA dans VirtualBox   "
    vboxmanage import /home/$USER/Documents/Virtual10.ova
    
else
	echo "NON ! Sortie"
	exit 0
fi

