<a id="Apache">*</a>
### Apache
<a href="https://vitux.com/how-to-install-and-configure-apache-web-server-on-ubuntu/">install apache2</a><br>
~~~
sudo apt update
sudo apt-get install apache2
sudo apt install apache2
apache2 -version
~~~

### [Linux系統] ubuntu安装MySQL
~~~
sudo apt-get install mysql-server
sudo apt install mysql-client
sudo apt install libmysqlclient-dev
~~~
測試資料庫是否安裝成功(netstat 的功用是顯示通訊協定統計資料以及目前的TCP/IP 網路連線)
~~~
sudo apt-get install net-tools
~~~

安裝完成後就能透過 netstat 指令來查看 MySQL 是否安裝成功：
~~~
sudo netstat -tap | grep mysql
~~~

>>開啟debian.cnf
~~~
sudo vim /etc/mysql/debian.cnf
~~~
此檔案開啟後可以很快速的看到 MySQL 預設的用戶名稱和密碼，最最重要的是用戶名的不是 root，而是debian-sys-maint，如下所示。

<h4>設置 MySQL 允許遠端訪問</h4>
此設定是因為目前這台主機是固定IP且提供外部連線可以進入我的伺服器中進行資料庫存取，因此要設置 MySQL 允許遠端訪問。

編輯 mysqld.cnf
首先編輯 mysqld.cnf 文件這個文件定義了所有 MySQL 的配置參數。進入後將 bind-address = 127.0.0.1  註解起來，完成後鍵盤輸入 :wq 儲存並退出 vim。
~~~
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf
~~~
進入 MySQL 服務
~~~
mysql -u root -p
~~~
輸入完成後看到 mysql> 就表示你成功進入MySQL 服務。

<h4>執行授權命令<h4>
在 MySQL 環境下執行授權命令(授權給遠程任何電腦登錄資料庫)，輸入以下指令：

~~~
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '你的密碼' WITH GRANT OPTION;
~~~
上面指令中 root 為你的資料庫 user，此指令是透過 * 允許所有外部 IP 可以自由存取我這台 Server 的資料庫，但這有安全問題若是正式主機建議就輸入開發者的 IP 就好。

全部設定完成後我們輸入以下指令進行刷新：
~~~
flush privileges;  
~~~
appach2的網頁路徑/etc/apache2
這個就是原本放HTML的資料夾，裡面有個index.html，就是沒更改前的網頁，也可透過下面指令改寫index.html
~~~
cd /var/www/html
sudo vi /var/www/index.html
~~~

匯入資料庫指令(需先cd至sql檔案處，並"mysql -u root -p"進入mysql)
~~~
source  mydata.sql
~~~
範例操作
~~~
cd /var/www/html
sudo git clone https://github.com/iachievedream/TP5.git
cd TP5
sudo composer install 

~~~
===
Q&A：mkdir(): Permission denied
mkdir(): Permission denied 解决办法
更改web目录权限

cd /var/www/html/
sudo chmod -R 666 your_dir(ex:PT5)

所以一定要有r權限才能開檔案，如果只有x或w是不能開檔案的
普通的文字檔只要有r權限就可以開檔案，不需要有x權限

~~~
修改linux權限命令：chmod
用法：chmod XXX filename

×××（所有者組用戶其他用戶）
×=4 讀的權限
×=2 寫的權限
×=1 執行的權限

常用修改權限的命令：

sudo chmod 600 ××× （只有所有者有讀和寫的權限）
sudo chmod 644 ××× （所有者有讀和寫的權限，組用戶只有讀的權限）
sudo chmod 700 ××× （只有所有者有讀和寫以及執行的權限）
sudo chmod 666 ××× （每個人都有讀和寫的權限）
sudo chmod 777 ××× （每個人都有讀和寫以及執行的權限）
~~~

>ubuntu MVC
小寫
_C大寫
_M可變寫(依V內的程式大小寫)
_V小寫(依C與Vg的框架內程式大小寫)
> 控制器需要都小寫英文字母

編輯php資料
~~~
sudo vi /var/www/html/TP5/app/index/model/User.php
~~~

<a href="https://github.com/iachievedream/notebook/tree/master/linux">contents</a>
<br>
### Q&no-A
how open is 80-port of linux ?




linux開啟port

iptables -A INPUT -p tcp -i eth0 –dport 80 -j ACCEPT


iptables -A INPUT -m geoip -p tcp --dport 80 --src--c RU,CN,HK -j DROP

iptables -A INPUT -m tcp --dport 80 -j DROP


iptables 

如何使用 iptables
使用 iptables 前，前先確定你的系統有安裝以下兩個套件。

iptables
iptables-services
安裝方式如下：

sudo yum install iptables-services iptables

sudo apt install iptables
sudo apt install iptables-services

