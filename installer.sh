#! /bin/bash

# Update repository:
sudo pacman -Syu

# Install aur package manager
sudo pacman -S yay pamac

# Base system applications
sudo pacman -S git screenfetch zsh gparted net-tools copyq htop appimagelauncher
yay -S nerdfetch pantheon-terminal translate-shell http gitflow stacer

# Programming language

## python
sudo pacman -S python ipython python-pip virtualbox

### base python modules
sudo pip install -U pip
sudo pip install -U django flask sanic gunicorn pyfiglet shecan

## node.js
sudo pacman -S nodejs npm

# ClamAV antivirus
sudo pacman -S clamav clamtk

# Graphic tools
sudo pacman -S krita gimp
yay -S lorien-bin rnote

# Shecan dns :
sudo shecan update
sudo shecan list
sudo shecan set
sudo shecan verify

# Sochial applications
sudo pacman -S telegram-desktop discord

# Database

## postgresql
sudo pacman -S postgresql pgadmin4
sudo -u postgres -b 'initdb --locale $LANG -E UTF8 -D "/var/lib/postgres/data/"'
sudo systemctl start postgresql.service
sudo systemctl enable postgresql.service

## mongodb
yay -S mongodb-bin mongodb-compass
sudo systemctl start mongodb.service
sudo systemctl enable mongodb.service

## redis
sudo pacman -S redis
sudo systemctl start redis
sudo systemctl enable redis

## sqlite
sudo pacman -S sqlite

# Browsers
sudo pacman -S firefox links torbrowser-launcher
yay -S google-chrome
sudo pamac install brave-browser

# Office softwares
sudo pacman -S libreoffice-fresh

# Multimedia 
sudo pacman -S clementine vlc elisa simplescreenrecorder

# Development IDE
sudo pacman -S kate code

# Virtualization
sudo pacman -S docker docker-compose
sudo systemctl start docker
sudo systemctl enable docker

# Server tools:
sudo pacman -S remmina
yay -S wrk

# Warp VPN
yay -S cloudflare-warp-bin
