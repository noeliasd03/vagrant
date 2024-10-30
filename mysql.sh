# Descargar el repositorio de MySQL
sudo apt-get update -y
sudo apt-get install -y wget lsb-release gnupg
wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.22-1_all.deb

# Actualizar los repositorios e instalar MySQL
sudo apt-get update -y
sudo apt-get install -y mysql-server

# Configurar MySQL para conexiones remotas y aplicar configuración de seguridad
sudo mysql_secure_installation <<EOF
y
n
y
y
EOF

# Configurar MySQL para escuchar en todas las interfaces
sudo sed -i 's/bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf

# Reiniciar MySQL y habilitar al arranque
sudo systemctl restart mysql
sudo systemctl enable mysql



