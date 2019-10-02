phpMyAdmin架構(所擁有的基本資料，範例為root)：
~~~
localhost：localhost
usernam  ：root
password ：a1234567
  data   :mydata
 table   :namephone

如需在php執行MySQL指令則外圍加上$sql=" 指令 "; 即可。
如：   $sql="INSET INTO book(authorid,title,ISBN) VALUES(6,"abc","146434")";
~~~
建立data資料庫：

~~~
CREATE DATABASE mydata;
~~~
建立namephone資料表：

~~~
CREATE TABLE namephone (
	id          INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name        VARCHAR(30) NOT NULL,
	nomey       INT(6),
	ex          VARCHAR(30)  
);

注:PRIMARY KEY：主鍵限制,
   unique：唯一限制,
   NOT NULL：不為空
   VARCHAR：以動態的方式儲存(CHAR為靜態儲存)
   TEXT：儲存文字。

插入資料表：
INSERT INTO namephone (name,phone,mony) values
('NlGU','16465862','124543'),
('NlCU','16132422','145423'),
('NFHC','16544542','134525'),
('NFCd','16632132','135254');

查詢namephone資料表：(*為全部內容)
SELECT * FROM namephone;
~~~
指令整理：資料操作語言 ( DML ) select，insert，update，delete。

~~~
SELECT * FROM $table WHERE (條件查詢)
SELECT DISSTINCT * FROM $table  (不重複查詢)
SELECT * FROM $table LIMTT (限制查詢資料)
SELECT * FROM cmdev.emp   （查詢cmdevy資料庫中的emp表格）
DELETE * FROM(刪除資料)

ORDER BY id ASC,(由小往大)
ORDER BY id DESC,(由大往小)
ex.SELECT name FROM namephone ORDER BY id ASC;

GROUP BY (計算總數)
SELECT name, SUM(mony) FROM namephone GROUP BY name;(計算單一人總金額)

別名(as)：SELECT ID as number,Name as chester FROM city
~~~
<br>
<br>
範例:Accounting<br>
建立data資料庫：

~~~
CREATE DATABASE mydata;
~~~
建立資料表
~~~
CREATE TABLE Accounting (
	id           INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name         VARCHAR(30) NOT NULL,
	day          VARCHAR(30) NOT NULL,
	breakfast    INT(6),
	luncht       INT(6),
	dinner       INT(6),
	Night        INT(6),
	traffic      INT(6),
	totle        INT(6) unique,
	ex           VARCHAR(30)  
);
~~~
插入資料表
~~~
INSERT INTO Accounting (name,day,breakfast,luncht,dinner,Night,traffic)
VALUES
('1qaz',0101,54,24,34,42,24),
('2wsx',0102,42,24,34,42,24),
('3edc',0103,44,24,42,42,24),
('4rfv',0104,42,24,34,42,24);
~~~
更新
~~~
UPDATE Accounting SET breakfast='100' WHERE id=3;
~~~
列出資料表的欄位
~~~
SHOW COLUMNS FROM Accounting
~~~
刪除資料
~~~
DELETE FROM Accounting  WHERE id=3;
~~~
刪除資料表
~~~
DROP TABLE Accounting ;
~~~
計算每日花費
~~~
SELECT id ,SUM(breakfast+luncht+dinner+Night+traffic) AS totlemoney FROM Accounting GROUP BY id
~~~
cmd 指令整理：
~~~
輸入密碼，登入MySQL:
mysql -u root -p

建立一個資料庫
create database mydata;

列出所有資料庫
SHOW DATABASES;

列出目前使用的資料庫名稱
SELECT DATABASE();

切換使用資料庫 mydata
USE mydata

列出資料表
SHOW TABLES FROM mydata [LIKE ...];
列出詳細資料表
SHOW TABLE STATUS
ex.LIKE 'my%'-->列出所有資料庫名稱為 my 開頭的

列出資料表的欄位
SHOW COLUMNS FROM namephone
列出詳細資料表的欄位
SHOW FULL COLUMNS FROM namephone

別名(as)：SELECT ID as number,Name as chester FROM city
~~~
<br>
<br>
SELECT id：以id為排列依據。SUM：相加畫號內的數值。AS：列入哪攔。FROM：從哪個資料表。GROUP BY：以誰為『群』分類(不重複)。
<br>
id需選擇的項目不含唯一(Unique)的資料欄位，將無法執行表格的編輯/核選、編輯、複製、刪除等相關的功能。
<br>
相加MySQL函式指令：
SELECT totle ,SUM(breakfast) AS totle2 FROM chester
注：totle：unique，totle2建立在哪攔，chester從哪個表格。`totle`與totle相同執行功能。