script 

~~~
<script>


</script>
~~~

列出數字 

~~~
var x=5;
document.write(x + "<br>");
~~~

數字相乘 

~~~
<input id="munber1">*
<input id="munber2">
<button type="button" onclick="munber()">=</button><span id="munber"></span>

<script>
function munber() {
    var munber1, munber2;
    // 获取 id="numb" 的值
    munber1 = document.getElementById("munber1").value;
    munber2 = document.getElementById("munber2").value;
    text=munber1*munber2;
    document.getElementById("munber").innerHTML = text;
}
if (text<20)
{
    x="Good day";
}
else
{
    x="Good evening";
}
    document.getElementById("x").innerHTML = x;
</script>
~~~

显示日期 

~~~
<p id="inputdata">日期</p>
<button type="button" onclick="displayDate()">輸出</button>
<script>
function displayDate(){
	document.getElementById("inputdata").innerHTML=Date();
}
</script>
~~~

JavaScript 能够直接写入 HTML 输出流中： 

~~~
<script>
document.write("<p>这是一个段落。</p>");
</script>
~~~

彈出視窗 

~~~

<p>JavaScript 能够对事件作出反应。比如对按钮的点击：</p>
<button type="button" onclick="alert('欢迎!')">点我!</button>
~~~

JavaScript 能改变 HTML 元素的内容。 

~~~
<p id="word">change word space</p>
<button type="button" onclick="changword()">点击这里</button>
<script>
function changword()
{
	x=document.getElementById("word");  // 找到元素
	x.innerHTML="Hello JS!";    // 改变内容
	// ==document.getElementById("demo").innerHTML="Hello JS!";

}
</script>
~~~

JavaScript 能改变 HTML 元素的样式。 

~~~
<p id="htmlmodel">black</p>
<button type="button" onclick="changecolor()">点击这里</button>
<script>
function changecolor()
{
	x=document.getElementById("htmlmodel") // 找到元素
	x.style.color="#ff0000";          // 改变样式
}
</script>
~~~

你可以弹出警告框来显示数据： 

~~~
<script>
window.alert(5 + 6);
</script>
~~~

操作 HTML 元素 

~~~
<p id="demo">我的第一个段落</p>
<script>
document.getElementById("demo").innerHTML = "段落已修改。";
</script>
~~~

写到 HTML 文档 

~~~
<script>
document.write(Date());
</script>
~~~

写到控制台 

~~~
<script>
a = 5;
b = 6;
c = a + b;
console.log("測試中"+c);
</script>
~~~

计算 

~~~
<p id="Calculation"></p>
<script>
document.getElementById("Calculation").innerHTML = 5 * 10;
</script>
~~~

JavaScript 变量 

~~~
<p id="changenumber"></p>
<script>
var length;
length = 6;
document.getElementById("changenumber").innerHTML = length;
</script>
~~~

JavaScript 变量計算 

~~~
<p id="changeCalculation"></p>
<script>
var x, y, z;
x = 5;
y = 6;
z = (x + y) * 10;
document.getElementById("changeCalculation").innerHTML = z;
</script>
~~~

带有返回值的函数 

~~~
<p>本例调用的函数会执行一个计算，然后返回结果：</p>
<p id="returnnunber"></p>
<script>
function myFunction(a,b){
	return a*b;
}
document.getElementById("returnnunber").innerHTML=myFunction(4,3);
</script>


<button onclick="getElementById('demo').innerHTML=Date()">现在的时间是?</button>
<p id="demo"></p>
~~~