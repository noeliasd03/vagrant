#!/bin/bash

# UPDATE AND INSTALL
sudo apt update
sudo apt upgrade -y
sudo apt install -y haproxy

# CONFIGURATION HAPROXY

# RESTART SERVICE

# HABILITATE SERVICE
# Iniciar y habilitar HAProxy
if command -v systemctl >/dev/null 2>&1; then
    sudo systemctl restart haproxy
    sudo systemctl enable haproxy
else
    sudo service haproxy restart
    sudo update-rc.d haproxy defaults
fi