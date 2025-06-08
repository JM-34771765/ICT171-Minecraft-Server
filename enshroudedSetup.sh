#!/bin/bash

# The commands in this file are sourced from the instructions found at https://www.hostinger.com/tutorials/how-to-set-up-enshrouded-dedicated-server 

# Update Packages
sudo apt update 
sudo apt upgrade

# Install Necessary Packages 
sudo apt install software-properties-common lsb-release wget

# Install Wine
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/$(lsb_release -is | tr '[:upper:]' '[:lower:]')/dists/$(lsb_release -cs)/winehq-$(lsb_release -cs).sources
sudo dpkg --add-architecture i386
sudo apt install --install-recommends winehq-staging
sudo apt install cabextract winbind screen xvfb

# Configure SteamCMD
sudo add-apt-repository multiverse
sudo apt install steamcmd

# Add and switch to enshrouded user
sudo adduser enshrouded
sudo -u enshrouded -s
cd ~

# Install the Enshrouded Server using SteamCMD
/usr/games/steamcmd +@sSteamCmdForcePlatformType windows +force_install_dir /home/enshrouded/enshroudedserver +login anonymous +app_update 2278520 +quit

