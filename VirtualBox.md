Windows PowerShell<br>
---
首先找到當初安裝VirtualBox的資料夾(預設路徑為C:\Program Files\Oracle\VirtualBox)，將滑鼠游標停留在其上，然後按住鍵盤的「Shift」不放，並且按下滑鼠右鍵，接著出現「快顯式選單」後，點選「在這裡開啟PowerShell視窗」，<br>
列出虛擬硬碟清單<br>
再來可以使用以下命令，列出虛擬硬碟清單：<br>
~~~
.\VBoxManage.exe list hdds
~~~
轉換「動態配置」型虛擬硬碟大小<br>
以這顆25GB大小的動態型虛擬硬碟為例，要轉換成32GB的大小，那麼輸入以下指令：
~~~
.\VBoxManage.exe modifyhd "F:\VirtualPC\OSTest\OSTest.vdi" --resize 32768
~~~
其中resize 後面的數字，單位為MB，因此 32 x 1024 = 32768 MB = 32 GB。<br>
執行過程如下：
~~~
PS C:\Program Files\Oracle\VirtualBox> .\VBoxManage.exe list hdds
>>
UUID:           7d18bfab-4da4-4bc8-9071-5811a01ef462
Parent UUID:    base
State:          created
Type:           normal (base)
Location:       C:\Users\iachievedream\VirtualBox VMs\win10\win10.vdi
Storage format: VDI
Capacity:       51200 MBytes
Encryption:     disabled
~~~
以這顆50GB大小的動態型虛擬硬碟為例，要轉換成60GB的大小，那麼輸入以下指令：
~~~
.\VBoxManage.exe modifyhd "C:\Users\iachievedream\VirtualBox VMs\win10\win10.vdi" --resize 61440
~~~
如果你的虛擬硬碟是Vmware的VMDK格式，那就要麻煩點，因為VirtualBox不支援直接壓縮VMDK格式，但是可以變通下：先轉換成VDI並壓縮，再轉回VMDK。執行命令：
---
~~~
C:\Users\iachievedream\VirtualBox VMs\win7\win7-disk001.vmdk
C:\Users\iachievedream\VirtualBox VMs\win7\win7-disk001.vdi

.\VBoxManage.exe clonehd "C:\Users\iachievedream\VirtualBox VMs\win7\win7-disk001.vmdk" "C:\Users\iachievedream\VirtualBox VMs\win7\win7-disk001.vdi" --format vdi

.\VBoxManage.exe modifyhd "C:\Users\iachievedream\VirtualBox VMs\win7\win7-disk001.vdi" --resize 51200

.\VBoxManage.exe clonehd "C:\Users\iachievedream\VirtualBox VMs\win7\win7-disk001.vdi" "C:\Users\iachievedream\VirtualBox VMs\win7\win7-disk001.vmdk" --format vmdk
~~~