@echo off
:main
cls
TITLE AUTOADB v4.6
echo.
echo                                   A-U-T-O A_D_B v4.7
echo                                      FOR LG G6~V50
echo                           coded: backryun      helper: DIGIWB,LR
echo                                ���� ������ ������ ����.
echo.
echo ******************************************************************************************
echo * 1.��� ���� Ȯ��   2.�ڵ� �ý��� �� ����   3.������ �ý��� �� ����   4.�� Ŀ�ǵ� ����  *
echo *                                                                                        *                     
echo *     5.�ػ� ����   6.�׺�� ����   7.�߳븶ũ+volte ����   8.substratum Ȱ��ȭ        *
echo *                                                                                        *       
echo * 9.�α��� ���� 10.����                                                                  *     
echo ******************************************************************************************
echo.
set main=
set /p main=���ڸ� �Է����ּ��� :

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
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
if %main% GTR 10 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)

:_check
cls
Bin\ADB\adb.exe devices -l | find "device product:" >nul
if errorlevel 1 (
echo ����� ��ġ�� �����ϴ�. USB ����� ���¸� Ȯ���Ͽ��ֽʽÿ�.
echo README.txt ������ ���ϴ�. Ȯ�� ��, â�� ������ ��� ����˴ϴ�.
notepad R E A D M E �� �� �� �� ��.txt
) else (
echo ��ġ�� ����Ǿ����ϴ�.
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
