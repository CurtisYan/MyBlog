---
layout: post
title: 在Mac上使用微信输入法的最佳解决方案，避免错误切换到ABC输入法（KeyboardHolder）
category: 工具
tags: 微信输入法 KeyboardHolder
keywords: KeyboardHolder,微信输入法,工具,技巧,输入法
expires: 2024-10-11 18:10:57
description: 
thumbnail: false
cover:  # 文章页头图
---

> 因为iPhone和mac之间的接力总是抽风，经常复制粘贴不好用，所以我还是全面转到稳定好用的微信输入法作为跨设备的剪切板传输工具。但是因为macOS的限制，我们可以看到：
>
>> 1.iPhone无法读取最新复制的信息
>> 2.mac如果没有在微信输入法状态下，则无法获取最新的剪切板信息
>> 
>
> 那这个文章就来分享一下我是如何解决mac中的abc输入法难题以及如何快速方便的剪切板跨设备共享。

### KeyboardHolder

你在不同软件中切换输入法的小工具。这个工具可以实现等同于“删除ABC输入法”的效果。我们将所有的设置都改为微信输入法，这样就可以避免在奇怪的场景下莫名其妙切换到abc输入法的问题。


#### [软件官网](https://keyboardholder.leavesc.com/zh-cn/)
下载好软件后双击打开，程序在启动后会在屏幕中显示一个网速的悬浮窗。在悬浮窗上单机右键可以弹出右键菜单，可也更改软件的所有设置。

同时任务栏窗口支持自定义显示项目，默认情况下只显示网速，如果需要显示 CPU 和内存利用率，请在任务栏右键菜单中的“显示设置”子菜单下勾选需要显示的项目

<img src="https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202410111756170.png" style="zoom:33%;" />




  <br>

设置方法：

<img src="https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202410111755799.png" style="zoom: 33%;" />

<br>

我是将开发软件与utools都设置为英文了。然后我们需要开启使用shift切换中英文：

<img src="https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202410111759927.png" style="zoom: 33%;" />

<br>

我们就完成了基本的配置。现在可以实现全程使用微信输入法了。如果想避免误触中英文键切换到abc，我们可以在系统设置中设置一下，关闭  ***使用大写锁定键切换 “ABC”输入法*** :

<img src="https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202410111805624.png" style="zoom:33%;" />



### iPhone将剪切板内容传递到微信输入法 

我的方法就是复制内容之后，回到主页下拉调用搜索。因为搜索的时候会呼出输入法，实现剪切板内容传递到微信输入法的效果。



<img src="https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202410111809112.png" style="zoom:25%;" />



