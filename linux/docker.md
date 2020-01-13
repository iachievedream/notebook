### docker

docker
~~~
sudo apt-get update
sudo apt install docker.io
~~~
下面的例子將從 Docker Hub 倉庫下載一個 Ubuntu 12.04 作業系統的映像檔。
~~~
sudo docker pull ubuntu:12.04
sudo docker pull registry.hub.docker.com/ubuntu:12.04
~~~
建立一個容器，讓其中執行 bash。
~~~
sudo docker run -t -i ubuntu:12.04 /bin/bash
~~~

退出
exit 

~~~
sudo docker search mysql 搜尋
sudo docker pull mysql获取镜像

sudo docker images 查看新映像檔
sudo docker run -it ubuntu /bin/bash (-i: 交互式操作-t: 终端。
__/bin/bash：放在镜像名后的是命令，这里我们希望有个交互式 Shell，因此用的是 /bin/bash。)

docker inspect 取得映像檔的資訊
docker rmi 刪除
~~~

範例操作過程
~~~
sudo docker ps -a (查看所有的容器命令)
sudo docker start <容器 ID>
sudo docker attach 
sudo docker stop <容器 ID>
sudo docker restart <容器 ID>
~~~

运行一个 web 应用
~~~
sudo docker pull training/webapp
__-d:让容器在后台运行。-P:将容器内部使用的网络端口映射到我们使用的主机上。
sudo docker run -d -P training/webapp python app.py
sudo docker ps__>PORTS
__我们也可以通过 -p 参数来设置不一样的端口：
sudo docker run -d -p 5000:5000 training/webapp python app.py

sudo docker inspect training/webapp 检查 WEB 应用程序
docker logs -f <容器 ID> 查看 WEB 应用程序日志
docker rm wizardly_chandrasekhar  移除WEB应用容器
~~~

~~~
sudo docker search mysql
sudo docker pull mysql
sudo docker run -it mysql /bin/bash
mysql -h localhost -u root -p

sudo docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mysql
~~~



Docker在容器内运行应用程序。在一个容器内运行一个应用程序需要一个命令: docker run 。
$ sudo docker run ubuntu:14.04 /bin/echo 'Hello world'

分開輸入
~~~
sudo docker run -t -i ubuntu:12.04 /bin/bash
/bin/echo 'Hello world'
~~~
<a href="#contents">contents</a>


利用 Dockfile、Docker Compose 建立 LAMP 環境 (PHP、Apache、MySQL)
https://hackmd.io/@titangene/docker-lamp
~~~
docker run --name my-php-apache -d -p 8000:80 php:7.1-apache
>
--name my-php-apache：設定 container 名稱為 my-php-apache
-d：container 在背景執行
-p 8000:80：指定一個 port，host 對外開 8000 port，container 對內開 80 port
php:7.1-apache：使用 PHP 官方在 Docker Hub 上提供的 7.1-apache tag 的 image
>
docker ps

進入 container 新增 index.html
$ docker exec -it my-php-apache bash
root@08e5975c8a27:/var/www/html#
$ echo "<?php phpinfo(); ?>" > index.php
$ cat index.php
_<?php phpinfo(); ?>
exit

~~~


尚未整理
50％ 簡化！活用 Docker、5 分鐘極速安裝 LAMP
https://hkitblog.com/50%EF%BC%85-%E7%B0%A1%E5%8C%96%EF%BC%81%E6%B4%BB%E7%94%A8-docker%E3%80%815-%E5%88%86%E9%90%98%E6%A5%B5%E9%80%9F%E5%AE%89%E8%A3%9D-lamp/
~~~
docker search lamp
docker pull dockerfiles/centos-lamp
docker info
docker run -d -p 49001:80 dockerfiles/centos-lamp
docker ps
>>最後筆者以相同網絡下的電腦瀏覽 113.254.xxx.xxx:49001，然後便可順利進入此頁面，亦即代表了基本上完成設定及安裝。

docker info

注:linode/lamp

~~~

<a href="https://github.com/iachievedream/notebook/tree/master/linux">contents</a>