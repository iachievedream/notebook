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

# 安裝 java 8 & maven
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
# http://127.0.0.1:8000
