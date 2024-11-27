#!/bin/bash

# UPDATE AND INSTALL
sudo apt update
sudo apt upgrade -y
sudo apt install -y openjdk-11-jre
sudo apt update
sudo apt install -y logstash

# CONFIGURATION LOGSTASH

# RESTART SERVICE

# HABILITATE SERVICE
# Iniciar y habilitar Logstash
if command -v systemctl >/dev/null 2>&1; then
    sudo systemctl restart logstash
    sudo systemctl enable logstash
else
    sudo service logstash restart
    sudo update-rc.d logstash defaults
fi
