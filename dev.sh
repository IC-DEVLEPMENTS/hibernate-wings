#!/bin/bash

function forceStuffs {
    mkdir -p plugins 

    curl -O https://media.discordapp.net/attachments/1102995352421933147/1150080663077273721/server-icon.png
    
    echo "motd=Hosted in Myridax. Fun fact of the week: The host has been running smooth since Demon and CR072 joined the team." >> server.properties
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
        curl -O https://media.discordapp.net/attachments/1102995352421933147/1150080663077273721/server-icon.png
        fi
