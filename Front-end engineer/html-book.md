Easy Basic
~~~
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
  
</body>
</html>
~~~
JS:<script>JS</script>
<script type="text/javascript" src="/assets/js/script.js"></script>

CSS:<style>CSS</style>
<link href="/assets/css/style.css" rel="stylesheet" type="text/css"/>

<pre>
     header
      nav
article || aside
     footer
</pre>

class pictures,pictures use:
~~~
<style>
.pictures {
    top: 10%;
    left: 10%;
    width: 20%;
    height: 40%;
    background: url(../images/hotel-pw1.png);
    background-repeat: no-repeat;
    background-position: center center;
    background-size: contain;
    position: absolute;

/*  background-color:#b0c4de;
    border: 3px solid #73AD21; */
}
</style>
  <div class="pictures"></div>
~~~
pictures
~~~
<div class="pictures" style="top:50%;left:10%;width:20%;position:absolute;">
  <img src="assets/images/SinAanCos.png" alt="SinAanCos" width="100%">
</div>
~~~
<a href=http://www.webtech.tw/info.php?tid=CSS_position_%E4%BD%8D%E7%BD%AE%E5%B1%AC%E6%80%A7
>CSS position 位置屬性</a>
~~~
position：搭配 top、left 兩個
position:absolute; // 絕對位置
position:relative; // 相對位置
position:fixed; // 固定位置
position:static; // 預設值
position:inherit; // 繼承自父層的 position 屬性值
配 top、left、bottom 或 right 屬
<img src="your logo image url" style="position:absolute;top:15px;left:10px;">
h2
{
    position:absolute;
    left:100px;
    top:100%;
    left:100%;
    bottom:100%;
    right:100%;
}
~~~
html-background
~~~
<style>
	body{
    margin:0px;
    padding:0px;
    background-color:#fff;         /*背景顏色*/
    background-image:url(home.jpg);/*背景圖片*/
    background-position:center center;  /*relative水平置中 垂直置中*/   
  /*background-position:10% 50%;   靠左10% 靠上10% 的位置*/　
    background-attachment:fixed; 　/*背景圖片位置固定*/
    background-repeat:no-repeat;   /*背景圖片不要重覆顯示（僅顯示一次）*/
    background-size: cover;        /*背景圖片的填滿方式*/
/*字體型式*/
    font-weight: bold;
    font-family: "Microsoft Jhenghei";
    font-size: 23px;    
	}
</style>
*******************************
background-position : 設定背景水平，垂直方向起啟
水平位置 中間(center) 左(left) 右(right)
垂直位置 上面(top) 中間(center) 下面(bottom)

background-attachment : 設定背景是否固定
是(fixed)
否(scroll) (拉動捲軸可看到效果)

background-repeat : 設定背景是否重複
不重複(no-repeat)
重複(repeat)
水平方向重複(repeat-x)
垂直方向重複(repeat-y)

background-size:规定背景图像的尺寸：
cover:可能超出div範圍
contain:在此div範圍中

把<BODY>改成以下語法:
<BODY background="圖片連結" style="background-repeat:repeat-x;background-attachment:fixed;background-position:left top">

使用在表格當中，把下面語法加在表格當中
style="background-repeat:repeat-x;background-attachment:fixed;background-position:left top"

flash背景透明：
<param name=wmode value=transparent>
~~~

~~~
The href Attribute-----<a href="http://www.~~~">text</a>
The src Attribute------<img src="img_girl.jpg" alt="Girl with a jacket" width="500" height="600">
HTML Horizontal Rules--<hr>
HTML Paragraphs--------<p>This is some text.</p>
HTML Headings----------<h1>Heading 1</h1>
HTML Line Breaks-------<p>This is<br>a paragraph<br>with line breaks.</p>
The HTML <pre> Element-<pre>My Bonnie lies over the ocean.</pre>

Chapter Summary-style
*[The style Attribute----<p style="color:red">I am a paragraph</p>]
HTML Fonts family--------<h1 style="font-family:verdana;">This is a heading</h1>
HTML Fonts family--------<p style="font-family:courier;">This is a paragraph.</p>
HTML Background Color--<body style="background-color:powderblue;">
HTML Text Color--------<h1 style="color:blue;">This is a heading</h1>-----blue--red
HTML Text Size---------<p style="font-size:160%;">This is a paragraph.</p>
Bigger Headings--------<h1 style="font-size:60px;">Heading 1</h1>

HTML Text Alignment----<p style="text-align:center;">Centered paragraph.</p>
HTML Styles------<p style="font-family:arial;color:red;font-size:20px;">一个段落。</p>
~~~
HTML Formatting Elements
Formatting elements were designed to display special types of text:
~~~
<b> - Bold text
<strong> - Important text
<i> - Italic text
<em> - Emphasized text
<mark> - Marked text
<small> - Small text
<del> - Deleted text
<ins> - Inserted text
<sub> - Subscript text
<sup> - Superscript text
~~~
HTML Quotation and Citation Elements
https://www.w3schools.com/html/html_quotation_elements.asp
~~~
HTML Quotation and Citation Elements
Tag	Description
<abbr>	Defines an abbreviation or acronym
<address>	Defines contact information for the author/owner of a document
<bdo>	Defines the text direction
<blockquote>	Defines a section that is quoted from another source
<cite>	Defines the title of a work
<q>	Defines a short inline quotation
~~~
HTML Colors
Colors Tutorial:https://www.w3schools.com/colors/default.asp
~~~
Color RGB          Color   HEX
 紅   rgb(255,0,0)  Red    #FF0000 
 綠   rgb(0,255,0)  Green  #00FF00 
 藍   rgb(0,0,255)  Blue   #0000FF

 黑   rgb(0,0,0)    Black  #000000 
 灰 rgb(128,128,128)Gray   #808080 
 白 rgb(255,255,255)White  #FFFFFF
 rgb(0,0,255,透明度)
~~~
HTML Styles - CSS
~~~
<!DOCTYPE html>
<html>
<head>
<style>
  h1{
    color: blue;
    font-family: verdana;
    font-size: 300%;
  }
  p{
    color: red;
    font-family: courier;
    font-size: 160%;
  }
</style>
</head>
<body>
  <h1>This is a heading</h1>
  <p>This is a paragraph.</p>
</body>
</html>
~~~
Input 类型
表單輸入類型
~~~
<form action="demo-form.php">
  E-mail: <input type="email" name="usremail">
  <input type="submit">
</form>
~~~