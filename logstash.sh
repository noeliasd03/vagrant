#!/bin/bash

# UPDATE AND INSTALL
sudo apt update
sudo apt upgrade -y
sudo apt install -y openjdk-11-jre
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
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
