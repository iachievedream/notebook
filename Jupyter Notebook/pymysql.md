PyMySQL 安装
$ pip install PyMySQL

連結資料庫
~~~
import pymysql

# 建立資料庫連接
db = pymysql.connect("localhost", "root", "12345678", "mydata", charset="utf8")
cursor = db.cursor()  # 建立cursor物件

##指令下達處##

db.close()  # 關閉資料庫連接
~~~

查詢與列出資料庫的資料
~~~
# 執行SQL指令SELECT
cursor.execute("SELECT * FROM pymysqltable")
data = cursor.fetchall()   # 取出所有記錄
#fetchone取出單一記錄

# 取出查詢結果的每一筆記錄
for row in data:
    print(row[0], row[1], row[2], row[3], row[4])
~~~

建立資料庫表
~~~
# 使用 execute() 方法执行 SQL，如果pymysqltable表存在则删除
cursor.execute("DROP TABLE IF EXISTS pymysqltable")

# 使用预处理语句创建表
sql = """CREATE TABLE pymysqltable (
         FIRST_NAME  CHAR(20) NOT NULL,
         LAST_NAME  CHAR(20),
         AGE INT,  
         SEX CHAR(1),
         INCOME FLOAT )"""
cursor.execute(sql)
~~~

~~~
# SQL 插入语句
sql = """INSERT INTO pymysqltable(FIRST_NAME,
         LAST_NAME, AGE, SEX, INCOME)
         VALUES ('Mac', 'Mohan', 20, 'M', 2000)"""
# SQL 插入语句(相同指令)
sql = "INSERT INTO pymysqltable(FIRST_NAME, \
       LAST_NAME, AGE, SEX, INCOME) \
       VALUES ('%s', '%s',  %s,  '%s',  %s)" % \
       ('Mac', 'Mohan', 20, 'M', 2000)     
try:
   # 执行sql语句
   cursor.execute(sql)
   # 提交到数据库执行
   db.commit()
except:
   # 如果发生错误则回滚
   db.rollback()
~~~

~~~
# SQL 查询语句
sql = "SELECT * FROM EMPLOYEE \
       WHERE INCOME > %s" % (1000)

# SQL 更新语句
sql = "UPDATE EMPLOYEE SET AGE = AGE + 1 WHERE SEX = '%c'" % ('M') 

# SQL 删除语句
sql = "DELETE FROM EMPLOYEE WHERE AGE > %s" % (20)
~~~