# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory="1024"
    vb.cpus="2"
    vb.customize ["modifyvm", :id, "--groups", "/Proyecto Vagrant"]
  end
  config.vm.synced_folder "./scripts", "/vagrant/scripts"
  

  # LOAD BALANCER
  
  config.vm.define "load_balancer" do |balancer|
    balancer.vm.hostname = "load.balancer"
    balancer.vm.network "private_network", ip: "172.16.1.10", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    balancer.vm.provider "virtualbox" do |vb|
      vb.name="LOAD BALANCER"
    end
    balancer.vm.provision "shell", inline: "echo 'INSTALLING AND CONFIGURING HAPROXY' && bash /vagrant/scripts/haproxy.sh > /dev/null 2>&1", privileged: true
  end

  # WEB SERVER 1
  
  config.vm.define "web_server_1" do |web1|
    web1.vm.hostname = "web.server.1"
    web1.vm.network "private_network", ip: "172.16.1.20", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    web1.vm.provider "virtualbox" do |vb|
      vb.name="WEB SERVER 1"
    end
    web1.vm.provision "shell", inline: "echo 'INSTALLING AND CONFIGURING NGINX' && bash /vagrant/scripts/nginx.sh > /dev/null 2>&1", privileged: true

  end

  # WEB SERVER 2

  config.vm.define "web_server_2" do |web2|
    web2.vm.hostname = "web.server.2"
    web2.vm.network "private_network", ip: "172.16.1.30", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    web2.vm.provider "virtualbox" do |vb|
      vb.name="WEB SERVER 2"
    end
    web2.vm.provision "shell", inline: "echo 'INSTALLING AND CONFIGURING NGINX' && bash /vagrant/scripts/nginx.sh > /dev/null 2>&1", privileged: true

  end

  # DATABASE SERVER

  config.vm.define "database_server" do |db|
    db.vm.hostname = "database.server"
    db.vm.network "private_network", ip: "172.16.1.40", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    db.vm.provider "virtualbox" do |vb|
      vb.name="DATABASE SERVER"
    end
    db.vm.provision "shell", inline: "echo 'INSTALLING AND CONFIGURING MYSQL' && bash /vagrant/scripts/mysql.sh > /dev/null 2>&1", privileged: true

  end

  # LOGGING SERVER

  config.vm.define "log_server" do |log|
    log.vm.hostname = "log.server"
    log.vm.network "private_network", ip: "172.16.1.50", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    log.vm.provider "virtualbox" do |vb|
      vb.name="LOGGING SERVER"
    end
    log.vm.provision "shell", inline: "echo 'INSTALLING AND CONFIGURING LOGSTASH' && bash /vagrant/scripts/logstash.sh > /dev/null 2>&1", privileged: true

  end

  # MONITORING

  config.vm.define "monitoring" do |mon|
    mon.vm.hostname = "monitoring"
    mon.vm.network "private_network", ip: "172.16.1.60", netmask: "255.255.255.0", virtualbox__intnet: "Vagrant"
    mon.vm.provider "virtualbox" do |vb|
      vb.name="MONITORING"
    end
    mon.vm.provision "shell", inline: "echo 'INSTALLING AND CONFIGURING PROMETHEUS' && bash /vagrant/scripts/prometheus.sh > /dev/null 2>&1", privileged: true

  end

  config.vm.post_up_message = "To access machines: vagrant ssh [load_balancer|web_server_1|web_server_2|database_server|log_server|monitoring]"
end
