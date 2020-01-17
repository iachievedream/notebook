<?php
// 建立資料庫連線
$conn = mysqli_connect("localhost","root","12345678","schema1");
mysqli_set_charset($cc,"utf8");
if (mysqli_connect_errno($conn)) {
	echo mysqli_connect_error();
}
// 接收前端傳來的 DataURL 字串
$imagestring = trim($_REQUEST["imagestring"]);
// 解析 DataURL
$token = explode(',', $bank_image);
// 取出圖片的資料並將 base64 還原成二進位格式
$image = base64_decode($token[1]);
// 以下為 PHP 將 Blob 放入Mysql的方法
$null = NULL;
$sql = 'insert into preview_image(image) values(?)';
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param('b', $null);
$stmt->send_long_data(0, $image);
$success = $stmt->execute();
$stmt->close();
var_dump($stmt);die();

?>