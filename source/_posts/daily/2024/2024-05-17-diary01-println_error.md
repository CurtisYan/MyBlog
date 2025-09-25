---
layout: post
title: 2024.5.17有感而发-关于println报错的解决
category: 学习笔记
tags: 报错
keywords:
description:
---

>   初学代码时你是否遇到java中sout的println报错？


##  问题描述

![无法解析符号](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406032234442.jpg "无法解析符号")

可以看到，我这行代码提示无法解析println,我刚学java时跟着学校的课程走，老师讲的不是很生动，加上我半吊子的学习态度。自然而然在后续的敲代码过程中，各种问题百出。

也许我现在描述的这个问题不值一提，因为它的问题出在哪实在是过于明显，但在我在刚学Java敲代码时，这个问题困扰着我，令我crazy。


##  为什么会报错

写代码的时候想直接在类中输出，发现：1、使用syso快捷方式的时候无法自动补全；2、手动写代码的时候“println”标红。在试过很多办法之后，才知道我忽略了一个很重要的问题—System.out.println()不能直接写在类里面，要写在方法中，如果硬是要在类中输出，可以加上大括号，让它变成普通块。


##  解决方法

解决方法1：写在类中。

![无法解析符号解决一](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406032257167.jpg "无法解析符号解决一")

解决方法2：加上大括号，让它变成普通块。
![无法解析符号解决二](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406032257848.jpg "无法解析符号解决二")

加上大括号之后，println不标红了。


##  总结

这次的报错我在网上翻查资料快一个小时，各种说法都有，最后才找到问题所在，归根结底还是基础不牢固，不然写代码的时候就会白白浪费不少时间，引以为戒。