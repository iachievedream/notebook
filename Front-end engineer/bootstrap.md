bootstrap
~~~
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>HTML-book</title>
  <meta charset="UTF-8">
  <title>ex-home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 新 Bootstrap4 核心 CSS 文件 -->
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
  <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
  <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
  <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

</body>
</html>
~~~
bootstrap--基礎架構
~~~
class="container-fluid"
class="jumbotron text-center"

<div class="container">
  <p class="bg-success text-white">This text indicates success.</p>
</div>

<div class="container">  
  <div class="row">
    <div class="col"><span>1</span></div>
    <div class="col"><span>2</span></div>
    <div class="col"><span>3</span></div>
  </div>
  <div class="row">
    <div class="col-sm-4">
       <h3>第一列</h3>
    </div>
    <div class="col-sm-4">
       <h3>第二列</h3>
    </div>
  </div>  
</div>

<!--建立相等寬度的列-->
<div class="container-fluid">
  <div class="row">
    <div class="col" style="background-color:lavender;">等寬度的列1</div>
    <div class="col" style="background-color:orange;">等寬度的列2</div>
  </div>
  <div class="row">
    <div class="col">列1</div>
    <div class="col-6">列2</div>
  </div>
</div>
~~~
Bootstrap 4 Colors
~~~
ex.<p class="bg-success text-white">Background is success,text is white</p>

muted 柔和
primary 重要
success 执行成功
info 代表一些提示信息
warning 警告文本
danger 危险操作
secondary 副标题
dark 深灰色文字
light 浅灰色
white 白色
~~~
圖解：CSS Flex 屬性一點也不難
~~~
Flex 外容器屬性：
display
flex-flow
flex-direction
flex-wrap
justify-content
align-items

Flex 內元件屬性：
flex
flex-grow
flex-shrink
flex-basis
order
align-self

外容器display
一開始要宣告為 flex 才能使用，如果沒有宣告為 flex，本篇大部分的屬性都無法作用，不過除了 flex 外，還有一個 inline-flex，作用類似於 inline-block + flex。

.flex-container {
  display: flex | inline-flex;
}

.flex-container {
  flex-direction: row | row-reverse | column | column-reverse;
}

.flex-container {
  flex-wrap: nowrap | wrap | wrap-reverse;
}
~~~
Bootstrap 4 排版三大亮點深度解析
~~~
垂直對齊
對 .row 或 .col 加入 .align-items-start align-items-center align-items-end ，就可以讓列或欄垂直的置頂、置中或置底。

水平對齊
對 .row 加入 .justify-content-start justify-content-center justify-content-end ，就可以讓列置左、水平置中或置右。而另外兩個新元素 justify-content-around 是讓該列內的欄平均的排列在該列當中，justify-content-between 則是讓列類的欄靠邊排列在該列當中。

位移功能 ( offset )：
而其他原本在 Bootstrap 3 當中使用的位移功能 ( offset ) 也還是存在著，但寫法已經從 .col-{breakpoint}-offset-* 改為 .offset-{breakpoint}-* ，並新增了Margin 通用類別 ( Margin utilities ) ml-auto mr-auto ，而他們也可以加上 RWD 中斷點指定變成 .ml-{breakpoint}-auto 或 .mr-{breakpoint}-auto 等。
~~~
利用Bootstrap Grid System排版的學習筆記
~~~

~~~
Bootstrap 4 重點精華
~~~

~~~
[CSS學習筆記] Bootstrap4 布局與欄位的使用
~~~
佈局：使用 container
容器是 Bootstrap 中最基本的佈局元素，容器 container 會預設的當你自適應寬跟高（意味著 max-width 在每個螢幕大小的變化），只要使用 div 標籤 class 名稱為 container 就會載入框架了。

<div class="container">
    <h1>Hello, world!</h1>
</div>

至於在後面添加 -fluid 代表的容器佔整個螢幕 100%。

<div class="container-fluid">
    <h1>Hello, world!</h1>
</div>

Row 與 Column 樣式：
在 Bootstrap 中還有欄跟列的佈局樣式一樣在 class 分別設定 col(欄) row(列) 他自己會變成表格樣式，其中是使用 flex 的佈局自動將畫面切為12等分去去做平分，我這邊新增3個row代表每一個寬度為(3/12)等分，以下我套用 css 屬性將它上顏色讓各位好分別他的欄位分佈。

<div class="container">
  <div class="row">
    <div class="col"><span>1</span></div>
    <div class="col"><span>2</span></div>
    <div class="col"><span>3</span></div>
  </div>
</div>

設定 col 等分：設定 col 等分直接在後面寫上數字例如6就是(6/12)，其餘得就是分配為(3/12)等分

<div class="container">
  <div class="row">
    <div class="col-6"><span>1</span></div>
    <div class="col"><span>2</span></div>
    <div class="col"><span>3</span></div>
  </div>
</div>


垂直對齊方式：row 垂直對齊
預設的 row 是上方垂直對齊 align-items-start 若想在容器的底部可以改成 align-items-end，若若想置中則 align-items-center。

垂直置中
align-items-center
垂直置頂(預設)
align-items-start
垂直置底
align-items-end

<div class="container">
  <div class="row align-items-end">
    <div class="col"><span>1</span></div>
    <div class="col"><span>2</span></div>
    <div class="col"><span>3</span></div>
  </div>
</div>

col 垂直對齊：其中 col 也能設定自己的對齊方式跟 row 使用方式一樣只是中間改成 self 就行了，下面範例是將 row 置中另外三個 row 分別對應佈局的上中下。

垂直置中
align-self-center
垂直置頂(預設)
align-self-start
垂直置底
align-self-end

<div class="container">
  <div class="row align-items-center">
    <div class="col align-self-start"><span>1</span></div>
    <div class="col"><span>2</span></div>
    <div class="col align-self-end"><span>3</span></div>
  </div>
</div>

水平對齊方式：row 水平對齊 在 row 平對齊中使用 flex 中的 justify-content 屬性來控制水平對齊方式。

水平置中
justify-content-center
水平靠左(預設)
justify-content-start
水平靠右
justify-content-end
水平靠左右
justify-content-between
水平左右平分置中
justify-content-around

<div class="container">
  <div class="row justify-content-end">
    <div class="col-4"><span>1</span></div>
    <div class="col-4"><span>2</span></div>
  </div>
</div>

水平垂直置中

  <div class="row justify-content-center align-items-center">
    <div class="col-4"><span>1</span></div>
    <div class="col-4"><span>2</span></div>
  </div>
</div>


欄位排序：
使用 order 能設定欄位的順序，總共分為12個。

<div class="container">
  <div class="row justify-content-center align-items-center">
    <div class="col order-3"><span>1</span></div>
    <div class="col order-2"><span>2</span></div>
    <div class="col order-1"><span>3</span></div>
  </div>
</div>

欄位偏移：欄位偏移使用 offset 來位移欄位，可以開啟開發者模式觀看 css style 可以發現原來 offset 是利用 margin-left 來做位移量。

<div class="container">
  <div class="row justify-content-center align-items-center">
    <div class="col offset-2"><span>1</span></div>
    <div class="col"><span>2</span></div>
    <div class="col"><span>3</span></div>
  </div>
</div>



欄位的響應式：Bootstrap 規定了幾種不同的尺寸，小於 576px 稱為 Extra small devices 為大部分手機預覽狀態用(xs)表示，大於等於 576px 為 Small devices 用(sm)表示，大於等於 768px 為 Medium devices 用(md)表示，大於等於 992px 為 Large devices 用(lg)表示，大於等於 1200px 為 Extra large devices 用(xl)表示表示，若想將欄位在不同的螢幕尺寸做不同顯示欄位的數量可以用以下方法。

< 576px Extra small devices(手機直式螢幕稱)
>= 576px Small devices(手機橫式螢幕)
>= 768px Medium devices(平板)
>= 992px Large devices(一般電腦螢幕)
>= 1200px Extra large devices(大尺寸電腦螢幕)
<div class="container">
  <div class="row justify-content-center align-items-center">
    <div class="col-sm-6 col-md-3"><span>1</span></div>
    <div class="col-sm-6 col-md-3"><span>2</span></div>
    <div class="col-sm-6 col-md-3"><span>3</span></div>
    <div class="col-sm-6 col-md-3"><span>3</span></div>
  </div>
</div>




~~~
https://www.ibest.com.tw/service/html5.php
~~~

~~~
https://getbootstrap.com/docs/3.4/examples/theme/
~~~

~~~
Responsive Web Design (RWD) 響應式網站開發教學與心得
http://sweeteason.pixnet.net/blog/post/42130394-responsive-web-design-%28rwd%29-%E9%9F%BF%E6%87%89%E5%BC%8F%E7%B6%B2%E7%AB%99%E9%96%8B%E7%99%BC%E6%95%99%E5%AD%B8%E8%88%87
