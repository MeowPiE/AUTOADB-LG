@echo off
:_resolution
cls
TITLE resolution v 1.1
echo 경고! 이 기능을 사용시 일부 앱은 오작동 할 수 있습니다.
echo 이 기능을 사용해서 오작동 하더라도 복구는 가능합니다.
echo.
echo 1.해상도 1440p(기본해상도)
echo.
echo 2.해상도 1080p
echo.
echo 3.해상도 720p
echo.
set /p main2=원하는 해상도 숫자를 선택해주세요:
if %main2% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _resolution
)
if %main2% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _resolution
)

cls
:ChangeResolution
	echo 해상도 조절중
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

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause