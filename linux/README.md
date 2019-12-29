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


### 使用指令安裝Apache
https://vitux.com/how-to-install-and-configure-apache-web-server-on-ubuntu/
install apache2<br>
~~~
sudo apt update
sudo apt-get install apache2
sudo apt install apache2
apache2 -version

~~~


### [Linux系統] ubuntu安装MySQL
~~~
安裝 MySQL
sudo apt-get install mysql-server
sudo apt install mysql-client
sudo apt install libmysqlclient-dev

測試資料庫是否安裝成功(netstat 的功用是顯示通訊協定統計資料以及目前的TCP/IP 網路連線)
sudo apt-get install net-tools

安裝完成後就能透過 netstat 指令來查看 MySQL 是否安裝成功：
sudo netstat -tap | grep mysql

>>開啟debian.cnf
sudo vim /etc/mysql/debian.cnf
此檔案開啟後可以很快速的看到 MySQL 預設的用戶名稱和密碼，最最重要的是用戶名的不是 root，而是debian-sys-maint，如下所示。

設置 MySQL 允許遠端訪問
此設定是因為目前這台主機是固定IP且提供外部連線可以進入我的伺服器中進行資料庫存取，因此要設置 MySQL 允許遠端訪問。

1. 編輯 mysqld.cnf
首先編輯 mysqld.cnf 文件這個文件定義了所有 MySQL 的配置參數。進入後將 bind-address = 127.0.0.1  註解起來，完成後鍵盤輸入 :wq 儲存並退出 vim。

sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf


若在進行 vim 修改文件的過程中方向鍵按下去後變成ABCD，刪除鍵無效時代表 vim 本身套件有問題，另一篇有教你如何解決。

mysql -u root -p
輸入完成後看到 mysql> 就表示你成功進入MySQL 服務。
~~~


ls /etc/apache2
這個就是原本放HTML的資料夾，裡面有個index.html，就是沒更改前的網頁
/var/www/html

cd /var/www

~~~
sudo cp apache2.conf apache2odocdrg.conf
~~~

匯入資料庫
source  mydata.sql
編輯php資料
sudo vi /var/www/TP5/app/index/model/User.php




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

Docker在容器内运行应用程序。在一个容器内运行一个应用程序需要一个命令: docker run 。
$ sudo docker run ubuntu:14.04 /bin/echo 'Hello world'

分開輸入
~~~
sudo docker run -t -i ubuntu:12.04 /bin/bash
/bin/echo 'Hello world'
~~~

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


https://magiclen.org/linux-ssh/
安裝SSH 讓Linux系統可以被遠端操作
~~~
sudo apt-get install ssh
~~~

