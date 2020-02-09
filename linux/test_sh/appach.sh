#!/bin/bash
sudo apt install vim
# install yum，npm，nodejs，curl
sudo apt-get update 
sudo apt install yum
sudo apt-get install npm
sudo apt-get install nodejs
sudo apt-get install curl

# install git，composer
sudo apt-get install git
sudo apt install composer

# install sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# install apache2
sudo apt update
sudo apt-get install apache2
sudo apt install apache2
#apache2 -version
cd /var/www/html
sudo mv index.html index1.html

# ubuntu安装MySQL
sudo apt-get install mysql-server
sudo apt install mysql-client
sudo apt install libmysqlclient-dev
# mysql -u root -p

# install phpmyadmin
sudo apt-get install phpmyadmin
# sudo nano /etc/apache2/apache2.conf

# and add the following line at the bottom of the file (you can add it anywhere in the file, I just choose the bottom here so that you can easily access it for modification):
# # Include /etc/phpmyadmin/apache.conf
# sudo service apache2 restart

# http://127.0.0.1/phpmyadmin/

# install php7(不需)
# sudo apt-get install php7.0-gd
# sudo apt-get install php7.0-intl
# sudo apt-get install php7.0-xsl

# How to Install PHP 7.2 on Ubuntu 16.04
sudo apt-get install software-properties-common python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2 php7.2-cli php7.2-common
sudo apt search php7.2
sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip
# php -v

# install docker
sudo apt-get update
sudo apt install docker.io

