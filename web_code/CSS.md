CSS 盒子模型
~~~
div {
    width: 300px;
    border: 25px solid green;/*width邊框 style實線邊框 color綠*/
    padding: 25px;     /*內邊距*/
    margin: 25px;      /*外邊距*/
}
~~~
文字對齊的方式
~~~
text-align:center;
text-align:right;
text-align:justify;
~~~
position:指定元素的定位类型
~~~
absolute:绝对定位的元素的位置相对于最近的已定位父元素
fixed:元素的位置相对于浏览器窗口是固定位置
relative:相对定位元素的定位是相对其正常位置
static:没有定位
inherit:规定应该从父元素继承 position 属性的值。
~~~
overflow:设置当元素的内容溢出其区域时发生的事情。
~~~
auto:如果内容被修剪，则浏览器会显示滚动条以便查看其余的内容
hidden:内容会被修剪，并且其余内容是不可见的。
scroll:内容会被修剪，但是浏览器会显示滚动条以便查看其余的内容。
visible:默认值。内容不会被修剪，会呈现在元素框之外。
inherit:规定应该从父元素继承 overflow 属性的值
~~~
CSS 布局 - 水平 & 垂直对齐:元素居中对齐
~~~
.center {
    margin: auto;
    width: 80%;
    border: 3px solid #73AD21;
    padding: 10px;
}

图片居中对齐
img {
    display: block;
    margin: auto;
    width: 40%;
}

左右对齐 - 使用定位方式
.right {
    position: absolute;
    right: 0px;
    width: 300px;
    border: 3px solid #73AD21;
    padding: 10px;
}
~~~