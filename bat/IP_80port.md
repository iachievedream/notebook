試著在 Windows 命令提示下輸入「ipconfig /all」指令，如果被發配到一個 10.211 開頭的 IP 位址，代表已經成功建立與 VPN Gate 的連結。

win10 code cmd input:
~~~
ipconfig
~~~

bat filt
~~~
@echo on
ipconfig
pause
~~~

[Windows] Port 80被佔用導致Apache無法啟動

開啟命令提示字元視窗，輸入以下指令：netstat –ano ，找出佔用Port 80的程式PID

~~~
netstat -ano | findstr 0.0:80
~~~

開啟「工作管理員」，到「處理程序」標籤，按上方的「檢視」→「選擇欄位」，把PID選項勾選起來。
看看是哪一個Service佔用了80 Port? 就處理處理一下吧。
一般而言，最常發生Skype佔用80 Port的狀況，若發生此狀況，請參考這邊的解決辦法。
    倘若發現PID = 4，且來源是NT Kernel佔用的話，請別急著把它砍掉。
    請下達以下指令：
net stop http
Sc config http start= disabled

(注意，這一行請完整複製，大小寫與空格都有差異)
完成後，最好重新開機一下，這樣子問題應該就解決了。

