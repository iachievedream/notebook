cmd 指令整理：<br>
輸入密碼，登入MySQL:
~~~
mysql -u root -p
~~~
建立一個資料庫
~~~
create database mydata;
~~~
列出所有資料庫
~~~
SHOW DATABASES;
~~~
列出目前使用的資料庫名稱
~~~
SELECT DATABASE();
~~~
切換使用資料庫 mydata
~~~
USE mydata
~~~
列出資料表：SHOW TABLES
~~~
SHOW TABLES FROM mydata [LIKE ...];
~~~
列出詳細資料表
~~~
SHOW TABLE STATUS
ex.LIKE 'my%'-->列出所有資料庫名稱為 my 開頭的
~~~
列出資料表的欄位
~~~
SHOW COLUMNS FROM namephone
~~~
列出詳細資料表的欄位
~~~
SHOW FULL COLUMNS FROM namephone
~~~
別名(as)：SELECT ID as number,Name as chester FROM city

匯入資料庫指令(需先cd至sql檔案處，並"mysql -u root -p"進入mysql)
~~~
source  mydata.sql
~~~
<br>
SELECT id：以id為排列依據。SUM：相加畫號內的數值。AS：列入哪攔。FROM：從哪個資料表。GROUP BY：以誰為『群』分類(不重複)。
<br>
id需選擇的項目不含唯一(Unique)的資料欄位，將無法執行表格的編輯/核選、編輯、複製、刪除等相關的功能。
<br>
相加MySQL函式指令：
SELECT totle ,SUM(breakfast) AS totle2 FROM chester
注：totle：unique，totle2建立在哪攔，chester從哪個表格。`totle`與totle相同執行功能。