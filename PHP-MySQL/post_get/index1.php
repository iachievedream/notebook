<?php
//接受index變數
// $article =$_POST["article"]; 
// $Author=$_POST["Author"]; 
// $time=$_POST["time"]; 
// $submission_date=date("Y.m.d");//紀錄時間


$article =$_GET["article"]; 
$Author=$_GET["Author"]; 
$time=$_GET["time"]; 
$submission_date=date("Y.m.d");//紀錄時間


$dbhost = 'localhost';  // mysql服务器主机地址
$dbuser = 'root';            // mysql用户名
$dbpass = '12345678';          // mysql用户名密码
$conn = mysqli_connect($dbhost, $dbuser, $dbpass); 
if(! $conn ){
  echo('Could not connect: ' . mysqli_error());
}
else{
  echo '数据库连接成功！';
}
mysqli_query($conn , "set names utf8");// 设置编码，防止中文乱码
 
?>
<hr>
<?php
 
$sql = 'CREATE DATABASE table2';    //建立資料庫 
// $sql = 'DROP DATABASE table2';      //刪除資料庫 
$retval = mysqli_query($conn,$sql ); 
if(! $retval ){
    echo('创建数据库失败: ' . mysqli_error($conn));
}
else{
  echo "数据库 table2 创建成功\n";
}
 
?>
<hr>
<?php
 
//建立資料表
$sql2 = "CREATE TABLE `article` (".
  "`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,".
  "`article` varchar(1000) DEFAULT '' COMMENT '文章',".
  "`Author` varchar(15) NOT NULL COMMENT '作者',".
  "`time` varchar(15) DEFAULT '' COMMENT '時間',".
  "submission_date DATE, ".
  "`Remarks` varchar(100) DEFAULT '' COMMENT '備註',".
  "PRIMARY KEY ( id ))ENGINE=InnoDB DEFAULT CHARSET=utf8; ";
// $sql2 = "DROP TABLE article";  //刪除資料表
mysqli_select_db($conn, 'table2' ); 
$retval = mysqli_query( $conn, $sql2 );
if(! $retval ){
    echo('数据表创建失败: ' . mysqli_error($conn));
}
else{
  echo "数据表创建成功\n";
}
 
?>
<hr>
<?php


// $article = '学习 Python';
// $Author = 'RUNOOB';
// $time = '2016-03-06';
 
$sql3 = "INSERT INTO article ".
        "(article,Author, time,submission_date) ".
        "VALUES ".
        "('$article','$Author','$time','$submission_date')";
// $sql3 = "DROP TABLE article";//删除数据
mysqli_select_db( $conn, 'table2' );
$retval = mysqli_query( $conn, $sql3 );
if(! $retval ){
  echo('无法插入数据: ' . mysqli_error($conn));
}
else{
  echo "数据插入成功\n";
}
 
$sql4 = 'SELECT id, article, 
        Author, time,submission_date
        FROM article
        ORDER BY  id DESC';//DESC big  ASC smarl
 
mysqli_select_db( $conn, 'table2' );
$retval = mysqli_query( $conn, $sql4 );
if(! $retval )
{
    die('无法读取数据: ' . mysqli_error($conn));
}
echo '<table border="1"><tr><td>id</td><td>article</td><td>Author</td><td>time</td><td>submission_date</td></tr>';
while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC))
{
    echo "<tr><td> {$row['id']}</td> ".
         "<td>{$row['article']} </td> ".
         "<td>{$row['Author']} </td> ".
         "<td>{$row['time']} </td> ".
         "<td>{$row['submission_date']} </td> ".
         "</tr>";
}
echo '</table>';

mysqli_close($conn);
?>
 