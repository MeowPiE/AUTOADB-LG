@echo off
:_resolution
cls
TITLE resolution v 1.8
echo ���! �� ����� ���� �Ϻ� ���� ���۵� �� �� �ֽ��ϴ�.
echo �� ����� ����ؼ� ���۵� �ϴ��� ������ �����մϴ�.
echo.
echo ��⸦ �������ּ���
echo.
echo 1.G6 2.V30 3.V35 4.G7 5.V40 6.G8 7.V50
echo.
set /p main=���ڸ� �Է����ּ��� :

if "%main%" == "1" goto _G6resolution
if "%main%" == "2" goto _V30resolution
if "%main%" == "3" goto _V35resolution
if "%main%" == "4" goto _G7resolution
if "%main%" == "5" goto _V40resolution
if "%main%" == "6" goto _G8resolution
if "%main%" == "7" goto _V50resolution
if %main% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
if %main% GTR 7 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)

:_G6resolution
echo.
echo 1.�ػ� 1440p(�⺻�ػ�)
echo.
echo 2.�ػ� 1080p
echo.
echo 3.�ػ� 720p
echo.
set /p main2=���ϴ� �ػ� ���ڸ� �������ּ���:
if %main2% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G6resolution
)
if %main2% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G6resolution
)
	echo �ػ� ������
	if "%main2%" == "1" (
	    Bin\ADB\adb.exe shell wm size 1440x2880
	    Bin\ADB\adb.exe shell wm density 565
	    )

	if "%main2%" == "2" (
	    Bin\ADB\adb.exe shell wm size 1080x2160
	    Bin\ADB\adb.exe shell wm density 424
	)
	
	if "%main2%" == "3" (
	    Bin\ADB\adb.exe shell wm size 720x1440
		Bin\ADB\adb.exe shell wm density 282
	)
)

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause

:_G7resolution
echo.
echo 1.�ػ� 1440p(�⺻�ػ�)
echo.
echo 2.�ػ� 1080p
echo.
echo 3.�ػ� 720p
echo.
set /p main2=���ϴ� �ػ� ���ڸ� �������ּ���:
if %main2% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G7resolution
)
if %main2% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G7resolution
)
	echo �ػ� ������
	if "%main2%" == "1" (
	    Bin\ADB\adb.exe shell wm size 1440x3140
	    Bin\ADB\adb.exe shell wm density 564
	    )

	if "%main2%" == "2" (
	    Bin\ADB\adb.exe shell wm size 1080x2340
	    Bin\ADB\adb.exe shell wm density 424
	)
	
	if "%main2%" == "3" (
	    Bin\ADB\adb.exe shell wm size 720x1560
		Bin\ADB\adb.exe shell wm density 282
	)
)

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause