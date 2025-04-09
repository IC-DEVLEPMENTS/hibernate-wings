#!/bin/bash

FOLDER="/var/lib/pterodactyl/volumes"

while true
do
    for folder in "$FOLDER"/*/
    do
        if [ -d "$folder" ] && [ ! -f "$folder/plugins/HibernateX.jar" ]
        then
            cp -v /var/lib/pterodactyl/volumes/HibernateX.jar "$folder/plugins/"
        fi
    done

    sleep 10
done
