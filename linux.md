<a href="http://linux.vbird.org/new_linux.php">鳥哥的 Linux 私房菜</a><br>
<br>
開啟Terminal(終端機):<br>
按 ctrl+alt+T<br>
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
~~~

退出<br>
esc<br>
<br>
儲存<br>
:w a123.c<br>
<br>
離開<br>
:q<br>
<br>
編譯:<br>
gcc a123.c<br>
<br>
執行:<br>
./a.out<br>
<br>
執行:<br>
gcc -o a123 a123.c<br>
<br>
install apache2<br>

~~~
sudo apt-get install apache2
~~~

後面輸入密碼

<br>
<br>

ls /etc/apache2

~~~
sudo cp apache2.conf apache2org.conf
~~~


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
儲存
:w a123.c

離開
:q

編譯:
gcc a123.c

執行:
./a.out




~~~