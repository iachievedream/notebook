比較運算子、邏輯運算子
~~~
<?php 
$a = (1>2 or 3<4);  //or兩端只要其中一個條件成立就會返回true。反之，返回false。 
var_dump($a);  //輸出變數$a的資料型態與內容 
echo '<br>'; 
$b = (1>2 and 3<4);  //and兩端條件皆成立才會返回true。反之，返回false。 
var_dump($b);  //輸出變數$b的資料型態與內容 
?> 
~~~

