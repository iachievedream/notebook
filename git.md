github起初操作<br>
基本資料設定:
~~~
git config --global user.email "iachievedream@gmail.com"
git config --global user.name "iachievedream"
~~~
確認設定:
~~~
git config --list
~~~
建立檔案
~~~
echo "# a12" >> README.md
echo "hello, git" > welcome.html
echo "# 123" >> qaz.md
~~~
初始化與新增至git
~~~
git init
git add README.md  <!-- 加入新檔至git -->
git add *.html     <!-- 把html檔新增至git: -->
git add --all      <!-- 把全部新增至git: -->
git add .          <!-- 把全部新增至git: -->
~~~
上傳與建立log:
~~~
git commit -m "first commit"
git commit -a -m "update content"
~~~
上傳至github:(以此資料夾上傳為例)
~~~
git remote add origin https://github.com/iachievedream/noteb
git push -u origin master
~~~
檢視目錄狀態:
~~~
git status
~~~
查詢log
~~~
git log
git log --oneline --graph<!-- 精簡查詢log -->
~~~
cat分支上傳至github(尚未整理完)
~~~
git remote add cat https://github.com/iachievedream/a12.git
git branch newfild <!-- 分之 -->
git checkout newfild  <!-- 確認 -->
git merge         <!-- 合併 -->
git merge bugFix  <!-- 合併到master -->
**git checkout bugFix;git merge master
-------------------------------------------
git branch bugFix
git checkout bugFix
git commit
git checkout master
git commit
git checkout bugFix;git merge master
*objective
git checkout master;git merge bugFix
~~~
2019 09 28 更新