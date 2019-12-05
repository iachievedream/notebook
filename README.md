安裝:<br>
簡易編譯器:<br>
sublime_text(Sublime Text 3.0 Build 3143 Portable 64-bit)<br>
git分散式版本控制系統(筆記討論方便)。<br>
<br>
APP：AndriodStudio或Eclipse為編譯環境，JAVA程式語言<br>
Jupyter Notebook：為完整的Python套件軟體。<br>
web_code：前端與後段的程式筆記<br>
<br>
Andriod Studio：<br>
下載處(尚未設定)<br>
terminal:
<table>
  <tr>
    <th>Windows</th>
    <th>MacOS/Linux </th>
    <th>說明</th>
   </tr>
   <tr>
    <th>cd</th>
    <th>cd</th>
    <th>切換目錄</th>
   </tr>
   <tr>
    <th>cd</th>
    <th>pwd</th>
    <th>取得目前所在的位置</th>
   </tr>
   <tr>
    <th>dir</th>
    <th>ls</th>
    <th>列出目前的檔案列表</th>
   </tr>
   <tr>
    <th>mkdir</th>
    <th>mkdir</th>
    <th>建立新的目錄</th>
   </tr>
   <tr>
    <th>無</th>
    <th>touch</th>
    <th>建立檔案</th>
   </tr>
   <tr>
    <th>copy</th>
    <th>cp</th>
    <th>複製檔案</th>
   </tr>
   <tr>
    <th>move</th>
    <th>mv</th>
    <th>移動檔案</th>
   </tr>
   <tr>
    <th>del</th>
    <th>rm</th>
    <th>刪除檔案</th>
   </tr>
   <tr>
    <th>cls</th>
    <th>clear</th>
    <th>清除畫面上的內容</th>
   </tr>
   <tr>
    <th></th>
    <th>man</th>
    <th>使用說明</th>
   </tr>
</table>

~~~
往上一層目錄移動
$ cd ..
切換到使用者的 home 目錄中的 project 裡的 namecards 目錄
這個 "~" 符號表示 home 目錄
$ cd ~/project/namecards/
把檔案 index.html 複製一份成 about.html：
$ cp index.html about.html
把檔案 index.html 更名成 info.html：
$ mv index.html info.html
刪除檔案 index.html：
$ rm index.html
~~~

git
~~~
cd C:\AppServ\www\notebook
git add . 
git commit -a -m "update content"
git remote add origin https://github.com/iachievedream/notebook
git push -u origin master
~~~