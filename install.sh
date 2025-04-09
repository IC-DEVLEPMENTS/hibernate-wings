#!/bin/bash

if [ "$EUID" -ne 0 ]
then
  echo "Please run as root."
  exit
fi

echo "Setting up Hicstr Sexy Hibernation for Paper no cap 2023 fire fire sex sex..."

curl -L -o /var/lib/pterodactyl/volumes/script.sh https://raw.githubusercontent.com/ewn69/hicstr-hibernate/main/assets/script.sh
curl -L -o /var/lib/pterodactyl/volumes/HibernateX.jar https://raw.githubusercontent.com/ewn69/hicstr-hibernate/main/assets/HibernateX.jar
sudo chmod -R 777 /var/lib/pterodactyl/volumes
nohup /var/lib/pterodactyl/volumes/script.sh > /dev/null 2>&1 & 

echo "Hicstr Sexy Hibernation for Paper no cap 2023 fire fire sex sex has been installed."
