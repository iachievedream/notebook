安裝 JSON Server
使用 NPM 安裝 JSON Server 套件並且安裝在全域環境中。
~~~
npm install -g json-server
~~~

新增與啟動 JSON Server 檔案
首先開啟一個空的資料夾並在裡面建立一個 db.json 的檔案，或是你也可以直接在終端機輸入 json-server db.json 系統會自動生成一個範例的檔案外加執行 Server，你會發現會自動監聽 3000 PORT 且有三條預設的 API 路徑，你可以試著將連結放到瀏覽器上執行看看結果是不是跟 db.json 裡所設定的內容一樣呢。
~~~
json-server db.json
~~~


