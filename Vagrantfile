# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory="1024"
    vb.cpus="2"
    vb.customize ["modifyvm", :id, "--groups", "/Proyecto Vagrant"]
  end

  # LOAD BALANCER
  
  config.vm.define "load_balancer" do |balancer|
    balancer.vm.hostname = "load.balancer"
    balancer.vm.network "private_network", ip: "172.16.1.10", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    balancer.vm.provider "virtualbox" do |vb|
      vb.name="LOAD BALANCER"
    end
  end

  # WEB SERVER 1
  
  config.vm.define "web_server_1" do |web1|
    web1.vm.hostname = "web.server.1"
    web1.vm.network "private_network", ip: "172.16.1.20", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    web1.vm.provider "virtualbox" do |vb|
      vb.name="WEB SERVER 1"
    end
  end

  # WEB SERVER 2

  config.vm.define "web_server_2" do |web2|
    web2.vm.hostname = "web.server.2"
    web2.vm.network "private_network", ip: "172.16.1.30", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    web2.vm.provider "virtualbox" do |vb|
      vb.name="WEB SERVER 2"
    end
  end

  # DATABASE SERVER

  config.vm.define "database_server" do |db|
    db.vm.hostname = "database.server"
    db.vm.network "private_network", ip: "172.16.1.40", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    db.vm.provider "virtualbox" do |vb|
      vb.name="DATABASE SERVER"
    end
  end

  # LOGGING SERVER

  config.vm.define "log_server" do |log|
    log.vm.hostname = "log.server"
    log.vm.network "private_network", ip: "172.16.1.50", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    log.vm.provider "virtualbox" do |vb|
      vb.name="LOGGING SERVER"
    end
  end

  # MONITORING

  config.vm.define "monitoring" do |mon|
    mon.vm.hostname = "monitoring"
    mon.vm.network "private_network", ip: "172.16.1.60", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    mon.vm.provider "virtualbox" do |vb|
      vb.name="MONITORING"
    end
  end

end
