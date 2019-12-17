<a href="http://jenkins.readbook.tw/jenkins/basic/install.html">安裝 Jenkins 軟體</a><br>
### 安裝 Java 軟體
建議使用 JDK 1.8 以上版本。
安裝 java 8 & maven
~~~
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
~~~
選擇 java 8 作為預設 java version
~~~
sudo update-alternatives --config java
sudo update-alternatives --config javac
~~~
### 安裝 Jenkins 軟體
參考 Jenkins 官方的 Ubuntu Linux 安裝說明
~~~
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
~~~
管理 Jenkins 伺服器
重新啟動 Jenkins 伺服器。
~~~
sudo service jenkins restart
~~~

## Ubuntu 用 APT 安裝 Jenkins
~~~
$ wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

$ sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

$ sudo apt-get update

$ sudo apt-get install jenkins
~~~
用上面的指令安裝完成之後，Jenkins 就會自動被啟動成服務的模式，因此，之後就可以用下面第一行的 service 指令來啟動、停止或重啟 Jenkins 哩 ! 而 Jenkins 的 Web 管理界面是用 8080 埠，如果要進入 Web 管理界面的話，就用下面第二行的網址來開啟囉 !
~~~
sudo service jenkins start | stop | restart
~~~

<a href="https://stackoverflow.com/questions/49937743/install-jenkins-in-ubuntu-18-04-lts-failed-failed-to-start-lsb-start-jenkins-a">Install Jenkins in Ubuntu 18.04 LTS failed (Failed to start LSB: Start Jenkins at boot time.)
</a><br>

[Root cause]
Ubuntu 18.04 LTS use Java 9 as default java
Jenkins 2.107.2 still use Java 8
[Solution]
Install Java 8 before install Jenkins
~~~
sudo add-apt-repository ppa:webupd8team/java
sudo apt install oracle-java8-installer
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo apt-add-repository "deb https://pkg.jenkins.io/debian-stable binary/"
sudo apt-get update
sudo apt install jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
~~~
====

