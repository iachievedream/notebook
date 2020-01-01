## Ubuntu
<a id="contents">*</a>
<h3>目錄</h3>
<a href="#C1">基本操作</a>
<a href="#C2">編輯文字檔案</a>
<a href="#C3">操作範例：輸入文件為a123.c</a>
<a href="#C100">Q&A</a>
<a href="#C101">Q&no_A</a>
===
<a href="#Complex">Linux 檔案系統架構</a>
===
<a id="C1"></a>*
### 基本操作：sudo 管理者執行
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

<a id="C2"></a>*
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

<a id="C3"></a>*
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
:w a123.c<br><br>
離開<br>
:q<br><br>
編譯:<br>
gcc a123.c<br>
gcc -o hello a123.c<br>
執行:<br>
./a.out<br><br>

<a href="#contents">contents</a>

<a id="C4"></a>*
<h3>大學分享</h3>
这边显示该章节的内容……
<a href="#contents">contents</a>

<a id="C5"></a>*
<h3>回顧</h3>
<a href="#contents">contents</a>


<a id="C100"></a>*
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

<a href="#C101">Q&no_A</a>
VBoxLinuxAdditions kali<br>
VBoxClient: Failed to register support
<a href="#contents">contents</a>



<a href="#Complex">Linux 檔案系統架構</a>
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


