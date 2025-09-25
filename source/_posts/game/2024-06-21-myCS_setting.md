---
layout: post
title: 我的CS设置
category: 游戏
tags: cs,setting
keywords: cs,csgo,setting
description: 
thumbnail: "https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406212031452.png" # 首页略缩图
cover: "https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406212031452.png" # 文章页头图

---

> 我是20年入坑的CSGO，很幸运，那时送了优先账户，我那时把大部分精力用在校园生活中，很少打CS，也不懂啥大行动，major通行证，勋章啥的，错过了很多东西，给我留下了遗憾，就像现在谁能想到蝴蝶刀价格暴涨。
> 第二段经历则是23年我高三时，备战高考，却受班级风气的影响迷恋上了CS，我开始练枪、开始学习道具、看直播、上b站学习，开始用buff花20块钱配了全套皮肤，其中不乏几毛几分的皮肤，也买了人生中第一把刀皮，现在这些皮肤对我来说弥足珍贵，也代表着我对这个游戏的热爱。
> 高考后，我没日没夜地玩CS，经常通宵达旦地打完美天梯，买电脑前我还天天泡网吧，一泡就是一下午。当时网吧的大屏幕和良好的游戏氛围让我一度陷入其中无法自拔，也正式开始了我的CS之路。
> 我写这篇文章旨在记录我的CS配置经验与设置。

 


#  基础设置与指令

### 推荐准星

代码：

`CSGO-D2vJL-VGer3-FPEtz-JttQd-97DRE`（十字）  
`CSGO-qFLSa-CQS6a-aJWKN-QZNPC-LSJvM`（绿圆形）  
`CSGO-daEbe-dMEpY-7qzen-ECUyG-sjwjN`（小圆点）  
`CSGO-VDaMd-xedXq-kpWmd-aNv9e-KxQRO`（极小圆点）  
`CSGO-xStGr-MyZVQ-QDeJV-zYGxW-wOJvM`（黄小圆形）  
`CSGO-jQx5T-f7moo-kwd7v-om3hc-RMQNN`（donk小十字）    



> 分辨率：4:3 1920*1440 	 *双线性，抗锯齿选无（目的是在1920\*1440分辨率下尽可能低延迟）*
>
> dpi：800*1.25，狙0.83  
>
> m_yaw 0.0165



### 基础指令

枪口抖动关闭指令：`Viewmodel_recoil 0`

看FPS：`net_graph 1`

---

CSGO旧指令：

关闭手臂抖动：`cl_bob_lower_amt 5` （默认21）

F键清除血迹指令：`bind f "+lookatweapon; r_cleardecals"`

SHIFT清除血迹指令：`bind shift "+speed;r_cleardecals"`

CTRL清除血迹指令：`bind "ctrl" "+duck;r_cleardecals"`

开枪后清除血迹指令：`bind MOUSE1 "+attack;r_cleardecals" `

---

##### 一键跳投

1.steam cs2 右键管理浏览本地文件 路径 game -csgo-cfg

2.创建一个文本文档名字autoexec后缀改成.cfg

把这段复制进去

alias +jp "+jump;-jump"

alias +ak "-attack;-attack2"

然后保存

3.打开cs2指令台输bind c "+jp;+ak"

这个c就是一键跳投，你习惯啥键就绑啥键

{% note warning  %}目前CS2无法使用跳投{% endnote %}



换手指令：`bindtoggle "v" "cl_righthand" 0 1` <small>设置中可以更改</small>

持枪视角1：`viewmodel_fov68;viewmodel_offset_x2;viewmodel_offset_y 2;viewmodel_offset_z-2;viewmodel_presetpos 0;`

持枪视角2：`Viewmodel_fov 68;Viewmodel_offset_x 2.5;Viewmodel_offset_y 2.0;Viewmodel_offset_z -1.7;Viewmodel_presetpos 0`

滚轮跳：`bind mwheeldown +jump`

按C快速转身：

<small>（像我设置了4:3分辨率的m_yaw指令，导致我实际edpi为1000*0.75=750，故进行180度转身时，我会按下C改变m_yaw的数值实现快速转身）</small>

`alias "+spin" "m_yaw 0.037"`
`alias "-spin" "m_yaw 0.0165"`
`bind C "+spin"`

关闭曳光弹：`r_drawtracers_firstperson 0`

手臂晃动开启：`cl_usenewbob 1`   <small>CS2开启手臂晃动实际体验更舒服</small>

一键静音：`bind 任意键 "toggle voice_modenable 1 0"`  <small>残局专用，<small>设置中可以更改</small></small>

**CS2的4:3拉伸手感不对一定要改的指令：**`m_yaw 0.0165` <small>默认是0.022，csgo时期没改过的就别改了</small>

像W跳投，快捷丢刀，滚轮跳等都可以在完美平台中设置
<img src="https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406231622256.png" alt="完美按钮设置" style="zoom: 50%;" />
<br>

### 跑图指令

*号开启，F1变蝴蝶刀，F3飞天

<br>
跑图必备指令↓，包括，无限金钱，无限血量，无限道具
复制输入到控制台后，按*启动。   
<small>丢刀后，对准刀按F1切换为蝴蝶刀，F3开启飞行</small>

{% folding blue:: 展开查看 %}

bind "F3" "noclip";bind p "bot_place 1";bind "F1" "subclass_change 515;give weapon_molotov;give weapon_smokegrenade;give weapon_flashbang;";bind "kp_multiply" "sv_cheats 1;ammo_grenade_limit_total 50;ammo_grenade_limit_default 2;mp_startmoney 99999;mp_ignore_round_win_conditions 1;mp_freezetime 0;mp_buy_anywhere 1;mp_buytime 99999;sv_grenade_trajectory 1;mp_maxmoney 99999;sv_grenade_trajectory_prac_pipreview 1;sv_infinite_ammo 1;bot_stop 1;sv_cheats true;mp_drop_knife_enable true;sv_regeneration_force_on 1;mp_respawn_on_death_ct 1;mp_respawn_on_death_t 1;mp_restartgame 1;"

{% endfolding %}



<br>

按J重复上一次道具：`bind "j" sv_rethrow_last_grenade`



（0）踢出bot

（1，2）是增加bot

（3）将bot放在指定位置

（4）bot蹲（7）bot站

（5）模仿镜像

（6）模仿同向

`bind kp_0 "bot_kick";`

`bind KP_1 "bot_add_t";`

`bind KP_2 "bot_add_CT";`

`bind KP_3 "bot_place 1";`

`bot_stop 1;`

`bind KP_4 "bot_crouch 1";`

`bind KP_7 "bot_crouch 0";`

`bot_mimic 1;`

`bind KP_5"bot_mimic_yaw_offset 180";`

`bind KP_6 "bot_mimic_yaw_offset 0";`


### 练枪图指令：

<small><small>用于练枪图随机刷新失效情况下</small></small>

按照顺序输入

指令1: `mp_randomspawn 1`随机刷新

指令2: `mp_restartgame 1` 重开游戏



### 启动项：

`-novid +r_fullscreen_gamma 2.6 -highpriority -nojoy -console Windowed -w 1920 -h 1440`

* -novid：跳过开场动画

* -worldwide：国际服

* -perfectworld：国服

* -highpriority(-high)：高优先级，就是要求CPU处理运算CS时是最高优先级，提高性能

* -nojoy：不用摇杆

* -console：打开游戏的时候自动打开控制台

* -r_fullscreen_gamma：调整伽马值，默认2.2，参数2.6的光线偏暗像CSGO风格

* -w -h：设置分辨率

  


### 快捷更换CS设置的方法（730文件夹）

当我们玩别人号时，为了获得良好的游戏体验。总要调回自己的设置调半天，但是只要把cs里面存放设置cfg文件的文件夹保存下来即可快捷换号。

![730](https://curtisyan.oss-cn-shenzhen.aliyuncs.com/img/no_important/202406231711364.png)

[下载入口](https://curtisyan.lanzn.com/igqmF2o5ebfc)



