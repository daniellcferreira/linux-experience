#!/bin/bash

echo "Atualizando o servidor..."
apt-get update

echo "Atualizando os pacotes..."
apt-get upgrade -y

echo "Instalando o Apache e o unzip..."
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/