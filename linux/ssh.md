更新套件清單
sudo apt-get update

安裝 OpenSSH Server
sudo apt-get install -y openssh-server

確認 SSH 服務
sudo service ssh status

查詢 Ubuntu 的 IP
ifconfig

遠端登入到 Ubuntu
ssh username@127.0.0.1
或使用putty軟體

取消 root 的登入權限
sudo nano /etc/ssh/sshd_config
＃PermitRootLogin Yes
或是
PermitRootLogin No

設定可以連線的主機
sudo nano /etc/hosts
sshd:127.0.0.1:allow


sudo nano /etc/hosts.deny
sshd:all:deny

重啟 SSH Server
sudo /etc/init.d/ssh restart
