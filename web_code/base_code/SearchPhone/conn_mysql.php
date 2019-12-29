<?php
	$db=mysqli_connect("localhost","$username","$password","mydata");//mysqli_connect判断是否成功连接上了 MySQL 数据库
	if(!$db){
		die("date Connection failed<br>");//die() 函数输出一条消息，并退出当前脚本。
	}else{
		echo"date Connection successfully<br>";
	}
/*待修改，登入關鍵
	if($name=="root"and $password=="root"){  //會員登入時，顯示會員的暱稱 
		$db=mysqli_connect("localhost","id7347169_"."user","juststrive","id7347169_data");
		echo"date Connection successfully<br>";
	}else{  //否則顯示Guest（訪客） 
		die("date Connection failed<br>");//die() 函数输出一条消息，并退出当前脚本。
	} 

*/
	
?>
