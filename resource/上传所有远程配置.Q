[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=dfd3d57b-3d78-4141-b710-8002427e4adc
Description=上传所有远程配置
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
// 
// 按键小精灵：启动 5 秒后自动运行
// 
// 计算机：
// 分辨率：1920 X 1080
// 更改文本、应用和其他项目的大小：100%
// 

// 远程配置 ——

// 登录
MoveTo 960, 610
Delay 1000
LeftClick 1

Delay 5000

// 上传配置
MoveTo 330, 865
Delay 1000
LeftClick 1

Delay 1000

// 勾选 02-08
MoveTo 777, 475
Delay 500
LeftClick 1

MoveTo 777, 498
Delay 500
LeftClick 1

MoveTo 777, 521
Delay 500
LeftClick 1

MoveTo 777, 544
Delay 500
LeftClick 1

MoveTo 777, 567
Delay 500
LeftClick 1

MoveTo 777, 590
Delay 500
LeftClick 1

MoveTo 777, 613
Delay 500
LeftClick 1

// 勾选 09-16
MoveTo 897, 452
Delay 500
LeftClick 1

MoveTo 897, 475
Delay 500
LeftClick 1

MoveTo 897, 498
Delay 500
LeftClick 1

MoveTo 897, 521
Delay 500
LeftClick 1

MoveTo 897, 544
Delay 500
LeftClick 1

MoveTo 897, 567
Delay 500
LeftClick 1

MoveTo 897, 590
Delay 500
LeftClick 1

MoveTo 897, 613
Delay 500
LeftClick 1

// 勾选 17-24
MoveTo 1017, 452
Delay 500
LeftClick 1

MoveTo 1017, 475
Delay 500
LeftClick 1

MoveTo 1017, 498
Delay 500
LeftClick 1

MoveTo 1017, 521
Delay 500
LeftClick 1

MoveTo 1017, 544
Delay 500
LeftClick 1

MoveTo 1017, 567
Delay 500
LeftClick 1

MoveTo 1017, 590
Delay 500
LeftClick 1

MoveTo 1017, 613
Delay 500
LeftClick 1

// 勾选 25-32
// 勾选 33-40
// 勾选 41-48
// 勾选 49-56

// 25
MoveTo 1137, 452
Delay 500
LeftClick 1

MoveTo 1017, 475
Delay 500
LeftClick 1

MoveTo 1017, 498
Delay 500
LeftClick 1

MoveTo 1017, 521
Delay 500
LeftClick 1

MoveTo 1017, 544
Delay 500
LeftClick 1

MoveTo 1017, 567
Delay 500
LeftClick 1

MoveTo 1017, 590
Delay 500
LeftClick 1

MoveTo 1017, 613
Delay 500
LeftClick 1

// 33
MoveTo 1137, 452
Delay 500
LeftClick 1

MoveTo 1017, 475
Delay 500
LeftClick 1

MoveTo 1017, 498
Delay 500
LeftClick 1

MoveTo 1017, 521
Delay 500
LeftClick 1

MoveTo 1017, 544
Delay 500
LeftClick 1

MoveTo 1017, 567
Delay 500
LeftClick 1

MoveTo 1017, 590
Delay 500
LeftClick 1

MoveTo 1017, 613
Delay 500
LeftClick 1

// 41
MoveTo 1137, 452
Delay 500
LeftClick 1

MoveTo 1017, 475
Delay 500
LeftClick 1

MoveTo 1017, 498
Delay 500
LeftClick 1

MoveTo 1017, 521
Delay 500
LeftClick 1

MoveTo 1017, 544
Delay 500
LeftClick 1

MoveTo 1017, 567
Delay 500
LeftClick 1

MoveTo 1017, 590
Delay 500
LeftClick 1

MoveTo 1017, 613
Delay 500
LeftClick 1

// 49
MoveTo 1137, 452
Delay 500
LeftClick 1

MoveTo 1017, 475
Delay 500
LeftClick 1

MoveTo 1017, 498
Delay 500
LeftClick 1

MoveTo 1017, 521
Delay 500
LeftClick 1

MoveTo 1017, 544
Delay 500
LeftClick 1

MoveTo 1017, 567
Delay 500
LeftClick 1

MoveTo 1017, 590
Delay 500
LeftClick 1

MoveTo 1017, 613
Delay 500
LeftClick 1

// 勾选 57-60
MoveTo 1137, 452
Delay 500
LeftClick 1

MoveTo 1017, 475
Delay 500
LeftClick 1

MoveTo 1017, 498
Delay 500
LeftClick 1

MoveTo 1017, 521
Delay 500
LeftClick 1

// 确定上传
MoveTo 865, 675
Delay 1000
LeftClick 1

Delay 25000

// 回车关闭
KeyDown "Enter", 1
Delay 500
KeyUp "Enter", 1

Delay 1000

// 关闭界面
MoveTo 1627, 170
Delay 1000
LeftClick 1

Delay 1000

// 按键精灵 ——

// 自动关闭
Hwnd = Plugin.Window.Find(0, "remote-upload")
Delay 1000
Call Plugin.Window.Active(Hwnd)
Delay 1000
Call Plugin.Window.Close(Hwnd)
