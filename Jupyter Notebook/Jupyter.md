Python_notebook
~~~
執行第一個程式Hello World
有兩種選擇：
直接開啟直譯器上輸入一行行程式碼，Enter執行
Windows:開啟Python(command line)
Mac/Unix:Terminal輸入python -輸入print "Hello World"

跟以往一樣寫一個.py的檔案，執行python 
「my_first_python.py」
# encoding: utf-8
print "Hello World"
注意中文的檔案要加上# encoding: utf-8

成為Python數據分析達人的第一堂課
http://moocs.nccu.edu.tw/course/121/intro
~~~
python install package
~~~
安装pip：python -m pip install -U pip
再安装套件terminal（終端機）：
pip install requests
pip install matplotlib
pip install numpy
pip install matplotlib.pyplot

使用ipython:
windows>>before into IDLE
pip install requests

命令提示字元:ipython
python -m pip install --upgrade pip setuptools wheel
get-pip
pip-18.1-py2.py3-none-any.whl

*安裝、使用jupyter notebook(檔名.ipynb)
pip install jupyter
pip3 install jupyter
*terminal：
jupyter notebook
~~~
pycharm-community-2018.2.4，安裝Request模組
~~~
File->Settings->展開Project:PycharmProjects

->Project Interpreter
->點選綠色+
->搜尋requests找到最新版
->點選安裝
~~~
*將Python打包成exe檔
~~~
安裝方法：
pip install pyinstaller
*Windows使用者執行：pyinstaller -F .\hello.py 會在命令框看到目前進度
*mac 使用者則是執行：pyinstaller -F ./hello.py 
因為command line 是正斜線
~~~
如何在Jupyter Notebook中使用Python虚拟环境？
https://zhuanlan.zhihu.com/p/29564719
用conda建立及管理python虛擬環境
學習如何利用conda為每一個不同需求的專案建立一個獨立適合的虛擬環境
https://medium.com/python4u/%E7%94%A8conda%E5%BB%BA%E7%AB%8B%E5%8F%8A%E7%AE%A1%E7%90%86python%E8%99%9B%E6%93%AC%E7%92%B0%E5%A2%83-b61fd2a76566
[Python] 「純」Windows 下的 Deep Learning
http://yenlung-blog.logdown.com/posts/1598592
打造 Jupyter Notebook 資料科學環境
https://medium.com/datainpoint/jupyter-kernels-3151a6408bab
~~~

tfpy2
tfpy3
Python2
***#檢查conda目前版本******************************************
conda –V #檢查目前版本
conda update conda      #更新目前版本
conda update anaconda   #把 Anaconda 整個更新
conda env list          #查看當下可以使用的 conda 虛擬環境
jupyter kernelspec list #查看Jupyter Notebook 運算核心
***安装tensorflow******************************************
conda update --all
conda install -c conda-forge tensorflow
***建立虛擬環境******************************************
conda env list #看目前系統已經安裝幾個虛擬環境
conda create --name myenv python=3.5
conda create -n python2 python=2.7.15  #新增虛擬環境與運算核心
（新版的指令更新為 conda activate python2）
***啟動虛擬環境--安装新内核******************************************
activate tfpy2 #啟動虛擬環境
*如果你是LINUX或macOS，那你所需輸入啟動的方式將會是source activate tfpy2
conda list #現在這個環境裝的套件
conda install numpy #安裝所需套件
conda install pip
conda install ipykernel
pip install ipykernel #啟動虛擬環境之後安裝 ipykernel 模組才能夠新增 Jupyter Notebook 的運算核心。
pip install tensorflow  #在这个虚拟环境下，我们就可以安装针对Python 3.6的最新版Tensorflow了
***離開虛擬環境******************************************
deactivate #離開虛擬環境
*而在macOS或LINUX則可以使用source deactivate
conda remove --name tfpy2 numpy #刪除虛擬環境或package
conda env remove --name tfpy2 #刪除整個虛擬環境
conda remove --name python2 --all #移除 Python 2.7.15 的虛擬環境
***新增運算核心***************************
python -m ipykernel install --user --name tfpy2  --display-name "Python (tfpy2)"
python3 -m ipykernel install --sys-prefix --name 'tfpy3'
***移除運算核心***************************
jupyter kernelspec remove python2
python -m ipykernel remove --user --name tfpy2 --display-name "Python (tfpy2)"
******************************
******************************
******************************
[Python] 「純」Windows 下的 Deep Learning
conda create -n tensorflow python=3.5 anaconda #建個新的 Anaconda 虛擬環境
activate tensorflow                            #轉到我們剛做好的 tensorflow 環境。
pip install tensorflow                         #然後安裝 TensorFlow
pip install --no-deps keras                    #然後安裝keras
這樣就在 Windows 下有個 Deep Learning 的完整學習環境了!
******************************
******************************
******************************
操作，建立python2環境
conda create -n python2 python=2
activate python2
pip install ipykernel
conda install pip~~
pip install MySQL-python
python -m ipykernel install --user --name python2 --display-name "Python2"
deactivate
jupyter kernelspec remove python2 #移除剛建立好的運算核心
conda remove --name python2 --all #移除虛擬環境
~~~
Mathematical_function_drawing.ipynb
~~~
import numpy as np
import pylab as pl

x = np.linspace(-5,5,100)
y = 2 * x + 1         # linspace(起始,結束,個數)

pl.plot(x,y)          # [<matplotlib.lines.Line2D object at 0x0000026CD71678D0>]
pl.show()
~~~
code-exerse
~~~
from matplotlib import pyplot as plt
import numpy as np

x = np.linspace(-np.pi,np.pi,256,endpoint=True)
y = np.sin(x)
z = np.cos(x)

plt.plot(x,y)
plt.plot(x,z)

plt.show()
********************************************************
import numpy as np
import pylab as pl
x = np.linspace(0,1.5,1000)
y=x
pl.plot(x,y)
y = x **2
pl.plot(x,y)
pl.show()
********************************************************
from matplotlib import pyplot as plt
import numpy as np

x = np.linspace(-3,3,80)  # linspace(起始,結束,個數)
y = np.sin(1/x)

plt.plot(x,y)

plt.show()
********************************************************
import numpy as np
import pylab as pl
x = np.linspace(0,1.5,1000)
y=x
pl.plot(x,y)
y = x **2
pl.plot(x,y)
pl.show()

********************************************************
from matplotlib import pyplot as plt
import numpy as np
x = np.linspace(-0.5,1.5,80)  # linspace(起始,結束,個數)
y = np.sin(1/x)
plt.plot(x,y)
y=x
plt.plot(x,y)
y = x **2
plt.plot(x,y)
plt.show()

********************************************************
from matplotlib import pyplot as plt
import numpy as np

x = np.linspace(-np.pi,np.pi,256,endpoint=True)
y = np.sin(x)
z = np.cos(x)

plt.plot(x,y)
plt.plot(x,z)

plt.show()

********************************************************
import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(-10, 10, 1000)
a = np.sin(x)
b = np.cos(x)
c = np.tan(x)
# d = np.log(x)

plt.figure(figsize=(8,4))
plt.plot(x,a,label='$sin(x)$',color='green',linewidth=0.5)
plt.plot(x,b,label='$cos(x)$',color='red',linewidth=0.5)
plt.plot(x,c,label='$tan(x)$',color='blue',linewidth=0.5)
# plt.plot(x,d,label='$log(x)$',color='grey',linewidth=0.5)

plt.xlabel('Time(s)')
plt.ylabel('Volt')
plt.title('PyPlot')
plt.xlim(0,10)
plt.ylim(-5,5)
plt.legend()
plt.show()

********************************************************
#3D
from matplotlib import cm
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np
fig = plt.figure()
ax = fig.gca(projection='3d')
X = np.arange(-5, 5, 0.25)
Y = np.arange(-5, 5, 0.25)
X, Y = np.meshgrid(X, Y)
R = np.sqrt(X**2 + Y**2)
Z = np.sin(R)
surf = ax.plot_surface(X, Y, Z, rstride=1, cstride=1, cmap=cm.coolwarm)
plt.show()

********************************************************
# -*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt

X = np.linspace(-np.pi, np.pi, 260, endpoint=True)         # 產生x座標的資料，從 -PI 到 PI

Cos_y, Sin_y = np.cos(X), np.sin(X)                        # Y座標
Tan_y = np.tan(X)

plt.plot(X, Cos_y, color="red", linewidth=1.0, linestyle="-", label="Cos")
plt.plot(X, Sin_y, color="green", linewidth=1.0, linestyle="--", label="Sin")
plt.plot(X, Tan_y, color="blue", linewidth=1.0, linestyle=":", label="Tan")

plt.ylim(-2.0, 2.0)                                        # 設定 y 座標範圍

plt.xticks([-np.pi, -np.pi/2, 0, np.pi/2, np.pi],          # 設定 x 座標文字
          [r'$-\pi$', r'$-\pi/2$', r'$0$', r'$+\pi/2$', r'$+\pi$'])


plt.legend(bbox_to_anchor=(1, 1), loc=1, borderaxespad=0.)

plt.show()
********************************************************
import numpy as np
import matplotlib.pyplot as plt

X = np.linspace(-np.pi, np.pi, 100, endpoint=True)  # 產生x座標的資料，從 -PI 到 PI

# Y座標
Cos_y, Sin_y = np.cos(X), np.sin(X)

plt.plot(X, Cos_y, color="red", linewidth=1.0, linestyle="-", label="Cos")
plt.plot(X, Sin_y, color="green", linewidth=1.0, linestyle="--", label="Sin")

plt.show()


~~~
OpenCV.ipynb no-fix
~~~
3.安装opencv 在官网自行下载，这里下载的是opencv2.4.10安装。 （1）复制cv2.pyd 将”\opencv\build\python\2.7\x64”或”\opencv\build\python\2.7\x86”（根据python版本）文件夹中找到cv2.pyd”，复制到Python安装文件的”C:\Python27\Lib\site-packages”文件夹中。

import cv2

import numpy as np

img = cv2.imread("C:\Users\iachievedream\Desktop\o\5760.jpg")

cv2.imshow("lena",img)

cv2.waitKey(10000)

E:\下載\opencv\build\python\2.7\x64 cv2

接下来是我们的第一个程序，读取图片并显示

打开Pycharm，新建一个Project，这里取名为：OpenCVTest

然后新建一个python文件，取名为：readImage.py

在readImage.py中键入如下代码

点击Run，运行程序

import cv2 #功能：读取一张图片，并显示出来

image = cv2.imread('images/test.jpg') # 根据路径读取一张图片 cv2.namedWindow("Image") # 初始化一个名为Image的窗口 cv2.imshow("Image", image) # 显示图片 cv2.waitKey(0) # 等待键盘触发事件，释放窗口
~~~
