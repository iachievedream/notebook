
~~~
<?php
setcookie("user", "runoob", time()+3600);
 
 
// 输出 cookie 值
echo $_COOKIE["user"];
 
// 查看所有 cookie
print_r($_COOKIE);
 
 
if (isset($_COOKIE["user"]))
    echo "欢迎 " . $_COOKIE["user"] . "!
";
else
    echo "普通访客!
";
 
// 设置 cookie 过期时间为过去 1 小时
setcookie("user", "", time()-3600);
 
?>
 
<?php
session_start();
// 存储 session 数据
$_SESSION['views']=1;
 
// 检索 session 数据
echo "浏览量：". $_SESSION['views'];
 
if(isset($_SESSION['views']))
{
    $_SESSION['views']=$_SESSION['views']+1;
}
else
{
    $_SESSION['views']=1;
}
echo "浏览量：". $_SESSION['views'];
 
if(isset($_SESSION['views']))
{
    unset($_SESSION['views']);
}
 
?>
~~~

