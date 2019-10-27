<?php
session_start();
if(empty($_SESSION['username'])){
 header("Location: login.php?errno=3");
 exit();
}
echo "你是管理员，你现在拥有后台管理权限";
?>