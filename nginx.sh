#!/bin/bash

# UPDATE AND INSTALL
sudo apt update
sudo apt upgrade -y
sudo apt install -y nginx

# CONFIGURING NGINX

# RESTART SERVICE

# HABILITATE SERVICE
# Iniciar y habilitar Nginx
if command -v systemctl >/dev/null 2>&1; then
    sudo systemctl restart nginx
    sudo systemctl enable nginx
else
    sudo service nginx restart
    sudo update-rc.d nginx defaults
fi
