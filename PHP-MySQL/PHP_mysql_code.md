<a href="http://hsingjungchen.blogspot.com/2017/08/phpmysql.html">PHP與MySQL登入範例</a>

主機：localhost。----資料庫名稱：mydata。------資料表：books與employee。

login.html：(軟體如果是MAMP則須改檔名為index.php)

mysqli_connect() 函数打开一个到 MySQL 服务器的新的连接。

mysqli_select_db(連接狀態的數值,"資料庫名稱")

需煥至其他資料庫則使用：mysqli_select_db($db_link,"資料庫名稱") 函数用于『更改』连接的默认数据库。

登入功能，查詢MySQL。(sql指令>>執行sql查詢>>取得共有幾筆紀錄>>取出單一筆紀錄)
~~~
<?php
	header('Content-Type: text/html; charset=utf-8');
	$username=$_POST['username'];
	$password=$_POST['password'];

	$db=mysqli_connect("localhost","$username","$password","mydata");//登入功能，含資料庫
	if(!$db){
		die("date Connection failed<br>");
	}else{
		echo"date Connection successfully<br>";
	}

	$sql="SELECT * FROM Delivery_resume";  //查詢Delivery_resume資料表
	$result = mysqli_query($db, $sql);//執行sql查詢
	if (mysqli_num_rows($result) > 0) {//取得共有幾筆紀錄
	    while($row = mysqli_fetch_assoc($result)) {//取出單一筆紀錄
	        echo $row["ID"].". ". $row["position"]."  of   ".$row["companyint"]."    have   ".$row["Reply"]."<br>";
	    }
	} else {
	    echo "0 结果";
}
?>
~~~

登入變數設定：
~~~
	header('Content-Type: text/html; charset=utf-8');
	$host=$_POST['localhost'];
	$username=$_POST['username'];
	$password=$_POST['password'];
	$database=$_POST['database'];
	$table=$_POST['table'];

	$db=mysqli_connect("localhost","$username","$password","mydata");
	$conn = new mysqli("localhost","$username","$password","mydata");

	if ($db->query($sql) === TRUE) {//正確則為執行}*====*if (mysqli_query($db, $sql)) {//正確則為執行}
~~~
連接資料庫：
~~~
实例 (MySQLi - 面向对象)：
	$conn = new mysqli(localhost, $username, $password);// 创建连接

	if ($conn->connect_error) {
	    die("连接失败: " . $conn->connect_error);// 检测连接
	}
	echo "连接成功";

实例 (MySQLi - 面向过程)：
	$db=mysqli_connect("localhost","$username","$password");

	if (!$db) {
	    die("Connection failed: " . mysqli_connect_error());// 检测连接
	}
	echo "连接成功";
~~~
建立資料庫(Create database)：$database
~~~
	$db=new mysqli("localhost","$username","$password","$database");
	$sql = "CREATE DATABASE $database";
	if ($db->query($sql) === TRUE) {
	    echo "Database created successfully";
	} else {
	    echo "Error creating database: " . $db->error;
	}
~~~
建立資料表(sql to create table)：$table
~~~
	$db=new mysqli("localhost","$username","$password","$database");
	$sql = "CREATE TABLE $table (
		id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
		firstname VARCHAR(30) NOT NULL,
		lastname VARCHAR(30) NOT NULL,
		email VARCHAR(50),
		reg_date TIMESTAMP
		)";

	if ($db->query($sql) === TRUE) {
	    echo "Table "."$table"." created successfully";
	} else {
	    echo "Error creating table: " . $db->error;
	}
~~~
後五段可換成以下替換：
~~~
	if (mysqli_query($db, $sql)) {
	    echo "数据表" ."$table"."创建成功";
	} else {
	    echo "创建数据表错误: ";
	}
	mysqli_close($db);
~~~

建立資料表格式：
<a href="http://www.runoob.com/sql/sql-datatypes.html">SQL 用于各种数据库的数据类型</a>
~~~
	CREATE TABLE $table (
	id          INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,  //PRIMARY KEY 约束唯一标识数据库表中的每条记录。
	firstname   VARCHAR(30) NOT NULL,   //保存可变长度的字符串
	lastname    VARCHAR(30) NOT NULL,
	email       VARCHAR(50),
	reg_date    TIMESTAMP   //时间戳
	)
~~~
插入資料表格式；
~~~
INSERT INTO $table (firstname, lastname, email)	VALUES ('John', 'Doe', 'john@example.com')
~~~
列印資料庫：
~~~
实例 (MySQLi - 面向对象)
	$sql = "SELECT id, firstname, lastname FROM MyGuests";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {  // 输出数据
	    while($row = $result->fetch_assoc()) {
	    		echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	    }
	} else {
	    echo "0 结果";
	}

实例 (MySQLi - 面向过程)
	$sql="SELECT * FROM $table";
	$result = mysqli_query($db, $sql);
	if (mysqli_num_rows($result) > 0) {
	    while($row = mysqli_fetch_assoc($result)) {
	        echo $row["Name"]."--is-- ". $row["Code"] ."<br>";
	    }
	} else {
	    echo "0 结果";
	}
~~~
>require("conn_mysql.php");	//require程序在执行前就会先导入要引用的文件；與include 相同只是include 不會退出

可換成以下兩種指令：

>$db=new mysqli("$host","$username","$password","$database");  //為MySQL之連接狀態
>$db=mysqli_connect("$host","$username","$password","$database");
