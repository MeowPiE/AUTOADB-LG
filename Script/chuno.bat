@echo off
:_chuno
cls
TITLE chuno v 2.0
echo �߳븶ũ(��Ż縶ũ),volte ��ũ
echo �ΰ��� ���¹ٿ��� �����ִ� ���α׷��Դϴ�.
echo.
echo 1. UX 6.0 (G6N,V30)
echo 2. UX 7.0 (G7,V40)
echo 3. UX 8.0 (G6P,G8,V30P,V40P,V50)
echo.
set main=
set /p main=���� �Է� :

if "%main%" == "1" goto _U6
if "%main%" == "2" goto _U7
if "%main%" == "3" goto _U8
if %main% LSS 1(
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
if %main% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
:_U6
cls
Bin\ADB\adb.exe push Bin\APP\chvo\UX6\lgeres_hidevolte.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX6\sysui_hideoperator.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX6\sysui_hidevolte.apk /storage/emulated/0/Download
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/lgeres_hidevolte.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_hideoperator.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_hidevolte.apk
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.lgeres.hidevolte
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.hideoperator
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.hidevolte
echo �۾��� �Ϸ�Ǿ����ϴ�!
pause
goto main

:_U7
cls
Bin\ADB\adb.exe push Bin\APP\chvo\UX7\lgeres_hidevolte.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX7\sysui_hideoperator.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX7\sysui_hidevolte.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX7\sysui_narrowmargin.apk /storage/emulated/0/Download
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/lgeres_hidevolte.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_hideoperator.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_hidevolte.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_narrowmargin.apk
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.lgeres.hidevolte
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.hideoperator
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.hidevolte
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.narrowmargin
echo �۾��� �Ϸ�Ǿ����ϴ�!
pause
goto main

:_U8
cls
Bin\ADB\adb.exe push Bin\APP\chvo\UX8\lgeres_hidevolte.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX8\sysui_hideoperator.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX8\sysui_hidevolte.apk /storage/emulated/0/Download
Bin\ADB\adb.exe push Bin\APP\chvo\UX8\sysui_narrowmargin.apk /storage/emulated/0/Download
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/lgeres_hidevolte.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_hideoperator.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_hidevolte.apk
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/sysui_narrowmargin.apk
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.lgeres.hidevolte
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.hideoperator
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.hidevolte
Bin\ADB\adb.exe shell cmd overlay enable win.limerainne.lgtheme.systemui.narrowmargin
echo �۾��� �Ϸ�Ǿ����ϴ�!
pause
goto main