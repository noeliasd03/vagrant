#!/bin/bash

# UPDATE AND INSTALL
sudo apt update
sudo apt upgrade -y
sudo apt install -y snapd
sudo snap install prometheus --classic

# CONFIGURATION PROMETHEUS

# RESTART SERVICE

# HABILITATE SERVICE
sudo snap stop prometheus
sudo mv /var/snap/prometheus/current/prometheus.yml /var/snap/prometheus/current/prometheus.yml.bak
sudo ln -s /etc/prometheus/prometheus.yml /var/snap/prometheus/current/prometheus.yml
sudo snap start prometheus