#!/bin/bash

function forceStuffs {
    mkdir -p plugins 

    curl -O https://cdn.discordapp.com/attachments/1345448789808255099/1359360512239992862/Naruto_Uzumaki_pfp.jpg?ex=67f732a1&is=67f5e121&hm=58d18d8fd08c283bd411750c1b3360235429d36f4f848f88a1c08a742fbfca3a&/server-icon.png
    
    echo "motd=Hosted in Flexahost. Fun fact of the week: The host has Best Free Hosting Join Now" >> server.properties
}

function launchJavaServer {
    java -Xms128M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar server.jar nogui
}

function optimizeJavaServer {
    echo "view-distance=6" >> server.properties
}

forceStuffs

optimizeJavaServer

launchJavaServer
    if [ ! -d "plugins" ]; then
        mkdir plugins
    fi
    if [ ! -f "plugins/HibernateX.jar" ]; then
        curl -O plugins/HubernareX.jar https://raw.githubusercontent.com/ewn69/hicstr-hibernate/main/assets/HibernateX.jar
    fi
    if [ ! -f "server-icon.png" ]; then
        curl -O https://cdn.discordapp.com/attachments/1345448789808255099/1359360512239992862/Naruto_Uzumaki_pfp.jpg?ex=67f732a1&is=67f5e121&hm=58d18d8fd08c283bd411750c1b3360235429d36f4f848f88a1c08a742fbfca3a&/server-icon.png
        fi
