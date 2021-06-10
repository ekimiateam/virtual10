#!/bin/bash

echo "bonjour voulez vous telecharger windows 10" 

zenity --question \
--title "Virtual10" \
--text "Voulez vous telecharger et lancer Virtual 10"
 
if [ $? = 0 ]
then
	echo "OUI ! Telechargement  "
	wget https://drive.ekimia.fr/s/yQs5Y5YBqwPRKbH/download -O /home/$USER/Documents/virtual10.ova

	echo " Installation de VirtualBox "
	sudo apt install virtualbox

   	echo "import du fichier OVA dans VirtualBox   "
    vboxmanage import /home/$USER/Documents/virtual10.ova
    
else
	echo "NON ! Sortie"
	exit 0
fi

