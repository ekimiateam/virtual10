#!/bin/bash

echo "bonjour voulez vous telecharger windows 10" 

zenity --question \
--title "Virtual10" \
--text "Voulez vous telecharger et lancer Virtual 10"
 
if [ $? = 0 ]
then
	sudo apt install aria2
	echo "OUI ! Telechargement  "
	cd /home/$USER/Documents
	aria2c magnet:?xt=urn:btih:10ff6bfbc5a7ca393e278994da5a3b2526822795&dn=virtual10.ova

	echo " Installation de VirtualBox "
	sudo apt install virtualbox

   	echo "import du fichier OVA dans VirtualBox   "
    vboxmanage import /home/$USER/Documents/virtual10.ova

	echo "starting Virtual10"
	vboxmanage startvm "Virtual10" 
    
else
	echo "NON ! Sortie"
	exit 0
fi

