@echo off
:_chuno
cls
TITLE chuno v 2.0
echo �߳븶ũ(��Ż縶ũ)
echo volte ��ũ
echo �ΰ��� ���¹ٿ��� �����ִ� ���α׷��Դϴ�.
echo.
echo 1. UX 6.0 (G6,V30)
echo 2. UX 7.0 (G7,V40)
echo 3. UX 8.0 (G6,G8,V30,V40,V50)
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
Bin\ADB\adb.exe push APP\chvo\UX6_r2.apk /storage/emulated/0/Download
Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/UX6_r2.apk
echo �۾��� �Ϸ�Ǿ����ϴ�!
pause