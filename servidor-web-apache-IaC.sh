#! /bin/bash

echo "Iniciando provisionamento de servidor web Apache e disponibilização de aplicação .................... "



echo "Atualizando o servidor ............................................................................... "

apt-get update
apt-get upgrade -y



echo "Instalando o Apache .................................................................................. "

apt-get install apache2 -y



echo "Instalando o unzip .................................................................................. "

apt-get install unzip -y



echo "Baixando e copiando apligação exemplo linux-site-dio para pasta padrão do Apache ..................... "

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd /var/www/html
rm *

cp -r /tmp/linux-site-dio-main/* /var/www/html



echo "Finalizado provisionamento de servidor web Apache e disponibilização de aplicação .................... "

