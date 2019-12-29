<?php
	header('Content-Type: text/html; charset=utf-8');
	$username=$_POST['username'];
	$password=$_POST['password'];

	require("conn_mysql.php");
	$sql="SELECT * FROM Delivery_resume";
	$result = mysqli_query($db, $sql);//執行sql查詢
	if (mysqli_num_rows($result) > 0) {//取得公有幾筆紀錄
	    while($row = mysqli_fetch_assoc($result)) {//取出一筆紀錄
	        echo $row["ID"].". ". $row["position"]."  of   ".$row["companyint"]."    have   ".$row["Reply"]."<br>";
	    }
	} else {
	    echo "0 结果";
}
?>