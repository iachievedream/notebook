github的起初操作
建立檔案
~~~
echo "# a12" >> README.md
echo "hello, git" > welcome.html
echo "# 123" >> qaz.md
~~~
git init           <!-- 初始化 -->
git add README.md  <!-- 加入新檔至git -->
git add *.html     <!-- 把html檔新增至git: -->
git add --all      <!-- 把全部新增至git: -->
git add .          <!-- 把全部新增至git: -->
上傳與建立log:
git commit -m "first commit"
git commit -a -m "update content"
上傳至github:
~~~
https://github.com/iachievedream/notebook.git
git push -u origin master
~~~
cat分支上傳至github
git remote add cat https://github.com/iachievedream/a12.git
~~~
基本資料設定:
git config --global user.email "iachievedream@gmail.com"
git config --global user.name "iachievedream"
確認設定:
git config --list
檢視目錄狀態:
git status
~~~
git log            <!-- 查詢log -->
git log --oneline --graph<!-- 精簡查詢log -->
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