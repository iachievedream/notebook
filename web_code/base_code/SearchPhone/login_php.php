<?php
	header('Content-Type: text/html; charset=utf-8');
	$username=$_POST['username'];
	$password=$_POST['password'];

	require("conn_mysql.php");
	$sql="SELECT * FROM namephone";
	//var_dump($sql);die;  // 打印，檢查
	$result = mysqli_query($db, $sql);
	// var_dump($result);die;  // 打印，檢查
	if (mysqli_num_rows($result) > 0) {
	    while($row = mysqli_fetch_assoc($result)) {
	        echo $row["name"]."--is-- ". $row["phone"] ." . his have ".$row["money"]." dollor."."<br>";
	    }
	} else {
	    echo "0 结果";
}
?>
