Ubuntu

開啟Terminal(終端機):<br>
按 ctrl+alt+T<br>

sudo passwd

套件管理
升級套件並下載安裝套件：
~~~
sudo apt-get update 
sudo apt install yum
~~~

使用 apt 安裝 Node.js
在 Ubuntu Linux 中，也可以透過 apt 來安裝：
~~~
sudo apt-get install nodejs
nodejs -v
~~~
sudo apt-get install -y nodejs


開啟 Terminal 輸入下方指令安裝 NPM
~~~
sudo apt-get install npm
~~~
安裝完成後可以確認一下 NPM 版本，並檢查是否成功安裝。
~~~
npm -v
~~~

使用指令安裝Apache
https://vitux.com/how-to-install-and-configure-apache-web-server-on-ubuntu/

install apache2<br>
~~~
sudo apt update
sudo apt-get install apache2
sudo apt install apache2
apache2 -version
~~~

這個就是原本放HTML的資料夾，裡面有個index.html，就是沒更改前的網頁
/var/www/html


ls /etc/apache2

~~~
sudo cp apache2.conf apache2odocdrg.conf
~~~



docker
~~~
sudo apt-get update
sudo apt install docker.io
~~~
下面的例子將從 Docker Hub 倉庫下載一個 Ubuntu 12.04 作業系統的映像檔。
~~~
sudo docker pull ubuntu:12.04
sudo docker pull registry.hub.docker.com/ubuntu:12.04
~~~
建立一個容器，讓其中執行 bash。
~~~
sudo docker run -t -i ubuntu:12.04 /bin/bash
~~~

退出
exit 
docker images 查看新映像檔
sudo docker images

### 安裝Git
~~~
sudo apt-get install git
~~~
### 安裝 Composer
~~~
sudo apt install composer
~~~


使用 Composer 管理 PHP 套件
http://blog.tonycube.com/2016/12/composer-php.html
Composer 安裝教學-於 Debian/Ubuntu 環境中示範
https://www.kjnotes.com/devtools/88

