@echo off
:_resolution
cls
TITLE resolution v 1.1
echo ���! �� ����� ���� �Ϻ� ���� ���۵� �� �� �ֽ��ϴ�.
echo �� ����� ����ؼ� ���۵� �ϴ��� ������ �����մϴ�.
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
	goto _resolution
)
if %main2% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _resolution
)

cls
:ChangeResolution
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