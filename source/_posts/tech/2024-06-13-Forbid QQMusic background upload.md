---
layout: post
title: 禁止QQ音乐后台上传
category: 工具
tags: 技巧
keywords: QQMusic,upload,data
description: 
---

>   最近发现QQ音乐在后台偷跑上传，网络上有的人甚至被偷跑了2TB的流量，这节省的CDN流量都足够换几百块了，能买一两年的QQ会员了。 
以下是禁止QQ音乐P2P上传的方法：
&nbsp;



###   1、打开任意文件夹，在地址栏输入： 

C:\Users\%USERNAME%\AppData\Roaming\Tencent\QQMusic\QQMusicCache  

如果你在Q音里自定义了缓存存放目录，请在Q音设置里打开QQMusicCache文件夹，如图：

![QQMusicCache](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406131658681.png "QQMusicCache")
<center style="font-size:14px;color:#C0C0C0;text-decoration:underline">QQMusicCache</center> 
<br>

###   2、找到目录下"downloadproxyNew"文件夹，双击进入文件夹
<br>

###   3、关闭QQ音乐以及其后台，清除"tp\_dp\_file"和"tp2p"文件夹里的所有内容但是不要删除这两个文件夹。

![删除已下载的缓存](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406131701681.png "删除已下载的缓存")
<center style="font-size:14px;color:#C0C0C0;text-decoration:underline">删除已下载的缓存</center>  

这两个文件夹下是QQ音乐之前下载的给别人的缓存，有好几个G
&nbsp;

###   4、回到上级的"QQMusicCache"文件夹  

右键"downloadproxyNew" - 属性 - 安全 - 高级 - 禁用继承 - 从此对象中删除所有已继承的权限 - 应用 - 一路确定就行

![禁用downloadproxyNew权限](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406131708688.png "禁用downloadproxyNew权限")
<center style="font-size:14px;color:#C0C0C0;text-decoration:underline">禁用downloadproxyNew权限</center>


###   5、验证 这时候双击"downloadproxyNew"文件夹，发现弹出权限请求则证明成功了，千万不要点确定进去，不然又得重新搞。
&nbsp;
![](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406131744231.png "出现权限提醒即表示成功")
<center style="font-size:14px;color:#C0C0C0;text-decoration:underline">出现权限提醒即表示成功</center>
&nbsp;
&nbsp;

