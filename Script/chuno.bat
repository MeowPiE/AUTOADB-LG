@echo off
:_chuno
cls
TITLE chuno v 3.0
echo 추노마크(통신사마크),volte 마크
echo 두개를 상태바에서 없에주는 프로그램입니다.
echo.
echo 1. UX 6.0 (G6N,V30)
echo 2. UX 7.0 (G7,V40)
echo 3. UX 8.0 (G6P,G8,V30P,V40P,V50)
echo.
set main=
set /p main=숫자 입력 :

if "%main%" == "1" goto _U6
if "%main%" == "2" goto _U7
if "%main%" == "3" goto _U8
if %main% LSS 1(
	echo 잘못 입력하셨습니다.
	pause
	goto main
)
if %main% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto main
)
:_U6
cls
Bin\ADB\adb.exe install -r Bin\APP\chvo\UX6\UX6_r2.apk
Bin\ADB\adb.exe shell am start com.lge.themesquare/com.lge.themesquare.ui.list.ThemeListActivity
echo 작업이 완료되었습니다!
echo 적용은 폰 보고 직접하세요
echo.
pause
goto main

:_U7
cls
Bin\ADB\adb.exe install -r Bin\APP\chvo\UX7\UX7_r3.apk
Bin\ADB\adb.exe shell am start com.lge.themesquare/com.lge.themesquare.ui.list.ThemeListActivity
echo 작업이 완료되었습니다!
echo 적용은 폰 보고 직접하세요
echo.
pause
goto main

:_U8
cls
Bin\ADB\adb.exe install -r Bin\APP\chvo\UX8\UX8_r3.apk
Bin\ADB\adb.exe shell am start com.lge.themesquare/com.lge.themesquare.ui.list.ThemeListActivity
echo 작업이 완료되었습니다!
echo 적용은 폰 보고 직접하세요
echo.
pause
goto main