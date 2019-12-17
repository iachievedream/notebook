<a href="http://linux.vbird.org/new_linux.php">鳥哥的 Linux 私房菜</a><br>
<br>
https://blog.techbridge.cc/2017/12/23/linux-commnd-line-tutorial/
Linux 檔案系統架構
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
~~~

sudo 管理者執行
~~~
ls      //列出基本資料夾資料：
ls -la  // -l 列出詳細資料 -a 列出隱藏資料
ls *.js // 列出為 .js 的檔案
pwd     //print work directory，印出目前工作目錄
cd .    //examples 移動到目前資料夾下的 examples 資料夾：
cd ~    //移動到家目錄：~：
cd ..   //移動到上一層目錄
cd /    //移動到根目錄

mkdir examples //make directory，創建新資料夾
rm examples    //remove file，刪除檔案

先將字串 TEST 存入 README.md 文件中
echo "TEST" > README.md
cp README.md
~~~

操作範例:
~~~
mkdir test
ls
cd test
nano README.md
>>>hello
>Ctrl + X >>enter

~~~

編輯文字檔案
nano：在終端機編輯文字檔案

編輯或是新增文字檔案：
 $ nano README.md
啟動編輯完後可以使用 Ctrl + X 離開，Ctrl + V 移動到上一頁，Ctrl + Y 移動到下一頁，Ctrl + W 搜尋文字內容

vim需要先安裝
~~~
sudo apt install vim
~~~
vim：在終端機編輯文字檔案
~~~
vim README.md
~~~
使用 i 進入編輯，esc 離開編輯模式，
:q 不儲存離開，
:wq 儲存離開，
:q! 強制離開

:(shift+;)




<br>
vi建立(開啟)a123.c檔案:<br>
vi a123.c

~~~
編輯:a，i，o與r鍵

h: 向左一個字元
l: 向右一個字元
k: 向上一行
j: 向下一行

dw為編輯刪除鍵
~~~

輸入文件為:
~~~
#include <stio.h>
int main(void)
{
printf(:a123");
} 

退出esc
儲存:w a123.c
離開:q
編譯:gcc a123.c
執行:./a.out
執行:gcc -o a123 a123.c
後面輸入密碼
~~~


開啟a123.c
vi a123.c
~~~
#include <stio.h>
int main(void)
{
printf(:a123");
} 
~~~





