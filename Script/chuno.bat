@echo off
:_chuno
cls
TITLE chuno v 3.0
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
Bin\ADB\adb.exe install -r Bin\APP\chvo\UX6\UX6_r2.apk
Bin\ADB\adb.exe shell am start com.lge.themesquare/com.lge.themesquare.ui.list.ThemeListActivity
echo �۾��� �Ϸ�Ǿ����ϴ�!
echo ������ �� ���� �����ϼ���
echo.
pause
goto main

:_U7
cls
Bin\ADB\adb.exe install -r Bin\APP\chvo\UX7\UX7_r3.apk
Bin\ADB\adb.exe shell am start com.lge.themesquare/com.lge.themesquare.ui.list.ThemeListActivity
echo �۾��� �Ϸ�Ǿ����ϴ�!
echo ������ �� ���� �����ϼ���
echo.
pause
goto main

:_U8
cls
Bin\ADB\adb.exe install -r Bin\APP\chvo\UX8\UX8_r3.apk
Bin\ADB\adb.exe shell am start com.lge.themesquare/com.lge.themesquare.ui.list.ThemeListActivity
echo �۾��� �Ϸ�Ǿ����ϴ�!
echo ������ �� ���� �����ϼ���
echo.
pause
goto main