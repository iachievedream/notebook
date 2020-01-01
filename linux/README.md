## Ubuntu
<a id="contents">*</a>
<h3>目錄</h3>
<a href="#C1">基本操作</a><br>
<a href="#C2">編輯文字檔案</a><br>
<a href="#C3">操作範例：輸入文件為a123.c</a><br>
<br>
<a href="#C100">Q&A</a><br>
<a href="#C101">Q&no_A</a><br>
<br>
<a href="#Complex">Linux 檔案系統架構</a><br>
<a href="#install">安裝套件</a><br>
<a href="#Apache">Apache</a><br>
<br>
<br>
<a id="C1">*</a>
### 基本操作：sudo 管理者執行

開啟Terminal(終端機):<br>
按 ctrl+alt+T<br>
sudo passwd<br>

~~~
cd ~    //移動到家目錄
cd ..   //移動到上一層目錄
cd /    //移動到根目錄
pwd     //print work directory，印出目前工作目錄
cd test //examples 移動到目前資料夾下的 examples 資料夾：
cd /etc //直接切換該目录

ls      //列出基本資料夾資料：
ls -la  // -l 列出詳細資料 -a 列出隱藏資料
ls *.js // 列出為 .js 的檔案

mkdir test //make directory，創建新資料夾
rmdir test //刪除空的資料夾
rm -r newdirectory //刪除內有資料的資料夾

touch test.txt //创建一个文件名為test
cp test test2 //把test複製一份成test2

操作範例:
nano README.md
>>>hello
>Ctrl + X >>enter

cat index.php //顯示index.php資料
rm examples    //remove file，刪除檔案

mv index.html test.html//把index.html 更名成test.html

======
先將字串 TEST 存入 README.md 文件中
echo "TEST" > README.md
cp README.md


复制文件
使用 touch 在根目录中创建一个文件 oldfile
touch oldfile
将其复制到/root/newdirectory
cp oldfile /root/newdirectory/newfile

~~~
<a href="#contents">contents</a>
<br>
<a id="C2">*</a>
### 編輯文字檔案 
nano：在終端機編輯文字檔案<br>
編輯或是新增文字檔案：<br>

~~~
 $ nano README.md
~~~
啟動編輯完後可以使用 Ctrl + X 離開，<br>
Ctrl + V 移動到上一頁，<br>
Ctrl + Y 移動到下一頁，<br>
Ctrl + W 搜尋文字內容<br>
<br>
vim需要先安裝<br>
~~~
sudo apt install vim
~~~
vim、vi：在終端機編輯文字檔案，建立(開啟)
~~~
vim a123.c
vi a123.c
~~~
使用 a，i，o 進入編輯，esc 離開編輯模式，
~~~
h: 向左一個字元
l: 向右一個字元
k: 向上一行
j: 向下一行

h_j_k_l
左下上右

dw為編輯刪除鍵

:q 不儲存離開，
:wq 儲存離開，
:q! 強制離開

:(shift+;)
~~~
<a href="#contents">contents</a>

<a id="C3">*</a>
### 操作範例：
輸入文件為a123.c
~~~
vim a123.c
~~~
使用 a，i，o 進入編輯，
~~~
#include <stdio.h>
int main()
{
   printf("Hello, World!");
   return 0;
}
~~~
esc 離開編輯模式，<br><br>
儲存為a123.c<br>
~~~
:w a123.c
~~~
離開<br>
~~~
:q
~~~
編譯:<br>
~~~
gcc a123.c
gcc -o hello a123.c
~~~
執行:<br>
~~~
./a.out

~~~
<a href="#contents">contents</a>
<br>
<br>
<a id="C100">*</a>
<a href="https://linuxconfig.org/how-to-install-gcc-the-c-compiler-on-ubuntu-18-04-bionic-beaver-linux">How to install GCC the C compiler on Ubuntu 18.04 Bionic Beaver Linux</a><br>
~~~
$ sudo apt install gcc
$ sudo apt install build-essential
~~~
hello.c
~~~
#include <stdio.h>
int main()
{
   printf("Hello, World!");
   return 0;
}
~~~
編譯與執行
~~~
$ gcc -o hello hello.c 
$ ./hello 
~~~
===
<a href="https://linuxconfig.org/how-to-install-gcc-the-c-compiler-on-ubuntu-18-04-bionic-beaver-linux">How to install GCC the C compiler on Ubuntu 18.04 Bionic Beaver Linux</a><br>

Could not mount the media/drive 'C:\Program Files\Oracle\VirtualBox\VBoxGuestAdditions.iso' (VERR_PDM_MEDIA_LOCKED).

<a href="https://askubuntu.com/questions/321589/unable-to-mount-the-cd-dvd-image-on-the-machine-sandbox">Unable to mount the CD/DVD image on the machine Sandbox</a><br>

~~~
sudo mount /dev/sr0 /media/cdrom

cd /media/
ls
cd 
sudo ./VBoxLinuxAdditions.run
sudo sh ./VBoxLinuxAdditions.run
~~~

<a id="C101">*</a>
### Q&no_A
VBoxLinuxAdditions kali<br>
VBoxClient: Failed to register support
<a href="#contents">contents</a>
<br>
<a id="Complex">*</a>
### Linux 檔案系統架構
<a href="http://linux.vbird.org/new_linux.php">鳥哥的 Linux 私房菜</a><br>
<br>
<a href="https://blog.techbridge.cc/2017/12/23/linux-commnd-line-tutorial/">Linux 檔案系統架構</a><br>
~~~
/bin 主要放置一般使用者可以操作的指令，
/sbin 放置系統管理員可以操作的指令。連結到 /usr/bin，/usr/sbin

/boot主要放置開機相關檔案

/dev放置 device 裝置檔案，包話滑鼠鍵盤等

/etc主要放置系統檔案

/home 主要是一般帳戶的家目錄，/root 為系統管理者的家目錄

主要為系統函式庫和核心函式庫，若是 64 位元則放在 /lib64。連結到 /usr/lib, /usr/lib64

/proc將記憶體內的資料做成檔案類型

/sys與 /proc 類似，但主要針對硬體相關參數

/usr/usr 全名為 unix software resource 縮寫，放置系統相關軟體、服務（注意不是 user 的縮寫喔！）

/var全名為 variable，放置一些變數或記錄檔

/tmp全名為 temporary，放置暫存檔案

/media放置隨插即用的裝置慣用目錄， /mnt 為管理員/使用者手動掛上（mount）的目錄

/opt全名為 optional，通常為第三方廠商放置軟體處

/run系統進行服務軟體運作管理處

/srv通常是放置開發的服務（service），如：網站服務 www 等
<a href="#contents">contents</a>
~~~

<a id="install">*</a>

## install
### apt套件管理
升級套件並下載安裝套件：
~~~
sudo apt-get update 
sudo apt install yum
~~~

### 安裝 NPM
~~~
sudo apt-get install npm
~~~
安裝完成後可以確認一下 NPM 版本，並檢查是否成功安裝。
~~~
npm -v
~~~

### 使用 apt 安裝 Node.js
在 Ubuntu Linux 中，也可以透過 apt 來安裝：
~~~
sudo apt-get install nodejs

nodejs -v
~~~

<a href="#contents">contents</a>


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

控制器需要都小寫英文字母


編輯php資料
~~~
sudo vi /var/www/html/TP5/app/index/model/User.php
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

[Linux] 如何在Ubuntu 下安裝 sublime 2/3 文字編輯器


~~~
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
~~~

<a href="#contents">contents</a>
