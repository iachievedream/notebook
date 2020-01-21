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
apache2 -version
# ubuntu安装MySQL
sudo apt-get install mysql-server
sudo apt install mysql-client
sudo apt install libmysqlclient-dev
# mysql -u root -p

# install phpmyadmin
sudo apt-get install phpmyadmin
# sudo gedit /etc/apache2/apache2.conf

# and add the following line at the bottom of the file (you can add it anywhere in the file, I just choose the bottom here so that you can easily access it for modification):
# # Include /etc/phpmyadmin/apache.conf
# sudo service apache2 restart

# http://127.0.0.1/phpmyadmin/




# install php7
sudo apt-get install php7.0-gd
sudo apt-get install php7.0-intl
sudo apt-get install php7.0-xsl

mv index.html index1.html

# 安裝 java 8 & maven
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
# http://localhost:8080/
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword
