@echo off
:main
cls
TITLE AUTOADB v4.6
echo.
echo                                   A-U-T-O A_D_B v4.7
echo                                      FOR LG G6~V50
echo                           coded: backryun      helper: DIGIWB,LR
echo                                무단 배포및 수정을 금함.
echo.
echo ******************************************************************************************
echo * 1.기기 연결 확인   2.자동 시스템 앱 삭제   3.삭제된 시스템 앱 복구   4.쉘 커맨드 진입  *
echo *                                                                                        *                     
echo *     5.해상도 조절   6.네비바 삭제   7.추노마크+volte 제거   8.substratum 활성화        *
echo *                                                                                        *       
echo * 9.로그켓 추출 10.종료                                                                  *     
echo ******************************************************************************************
echo.
set main=
set /p main=숫자를 입력해주세요 :

if  "%main%" == "1" goto _check
if  "%main%" == "2" goto _remove
if  "%main%" == "3" goto _recovery
if  "%main%" == "4" goto _shell
if  "%main%" == "5" goto _resolution
if  "%main%" == "6" goto _navibar
if  "%main%" == "7" goto _chuno
if  "%main%" == "8" goto _andromeda
if  "%main%" == "9" goto _logcat
if  "%main%" == "10" goto _EXIT
if %main% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto main
)
if %main% GTR 10 (
	echo 잘못 입력하셨습니다.
	pause
	goto main
)

:_check
cls
Bin\ADB\adb.exe devices -l | find "device product:" >nul
if errorlevel 1 (
echo 연결된 장치가 없습니다. USB 디버깅 상태를 확인하여주십시오.
echo README.txt 파일을 엽니다. 확인 후, 창을 닫으면 계속 진행됩니다.
notepad R E A D M E 제 발 읽 어 요.txt
) else (
echo 장치가 연결되었습니다.
)
pause
goto main

:_remove
cls
call Script\App_remove.bat
goto main

01:_recovery
cls
call Script\App_recovery.bat
goto main

:_shell
cls
Bin\ADB\adb.exe shell
goto main

:_resolution
cls
call Script\resolution.bat
goto main

:_navibar
cls
call Script\navibar.bat
goto main

:_chuno
cls
call Script\chuno.bat
goto main

:_andromeda
cls
Bin\APP\AndromedaLauncher.exe
goto main

:_logcat
cls
call Script\logcat.bat
goto main

:_EXIT
exit
