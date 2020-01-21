# shell scrip
## bash教學
### 1.你增加一個檔案(例: test.sh )<br>
nano test.sh<br>
### 2.然後在檔案中打好你要執行的工作<br>
test.sh
~~~
#!/bin/bash
read -p "Please input your first name:" firstname
read -p "Please input your last name:" lastname
echo -e "\nYour full name is: $firstname $lastname"
~~~
### 3.給該檔案執行權限 chmod 777 ( user group other )
(建議 chmod +x xxx.sh )<br>
chmod +x 檔名.sh
給予這個 *.sh 檔案，可執行權限
三個數自分別代表 user group other，
×=4 讀的權限
×=2 寫的權限
×=1 執行的權限

### 4. ./test.sh<br>
執行指令
sh test.sh 
bash
dash

該種方式使用之前必須為檔案新增執行的許可權：
chmod  x test.sh
 ./test.sh 

使用source執行(執行完整的程序)
source test.sh
