#!/bin/bash

if [ "$EUID" -ne 0 ]
then
  echo "Please run as root."
  exit
fi

echo "Pterodactyl Nodes Overloaded Fixed with one script"

curl -L -o /var/lib/pterodactyl/volumes/run.sh https://raw.githubusercontent.com/VanshOPAlt/hibernate-wings/main/src/run.sh
curl -L -o /var/lib/pterodactyl/volumes/HibernateX.jar https://raw.githubusercontent.com/VanshOPAlt/hibernate-wings/main/src/HibernateX.jar
sudo chmod -R 777 /var/lib/pterodactyl/volumes
nohup /var/lib/pterodactyl/volumes/run.sh > /dev/null 2>&1 & 

echo "Hibernation for Pterodactyl wings has been installed."
