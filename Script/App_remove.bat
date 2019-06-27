@echo off
:_uninstall
cls
TITLE Uninstaller v 2.0
echo 사용중인 모델을 선택해주세요
echo.
echo 1.G6 2.G7 3.G8 4.V30
echo.
echo 5.V40 6.V50
echo.
set main=
set /p main=숫자를 입력해주세요 :

if "%main%" == "1" goto _G6
if "%main%" == "2" goto _G7
if "%main%" == "3" goto _G8
if "%main%" == "4" goto _v30
if "%main%" == "5" goto _v40
if "%main%" == "6" goto _v50
if %main% LSS 1(
	echo 잘못 입력하셨습니다.
	pause
	goto main
)
if %main% GTR 6 (
	echo 잘못 입력하셨습니다.
	pause
	goto main
)
:_G6
cls
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main2=
set /p main2=통신사 숫자를 선택해주세요:
if %main2% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _G6
)
if %main2% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _G6
)
cls
echo 경고! 이 작업을 진행시 복구방법은 공장초기화만 가능합니다.
echo 통상적인 쓰래기앱만 제거합니다. 추가로 제거하실꺼면 직접하세요.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:removeapp
if "%main2%" == "1" ( for /f %%i in (Bin\APPL\KT_G6.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main2%" == "2" ( for /f %%i in (Bin\APPL\SKT_G6.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main2%" == "3" ( for /f %%i in (Bin\APPL\LGU_G6.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause

:_G7
cls
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main3=
set /p main3=통신사 숫자를 선택해주세요:
if %main3% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _G7
)
if %main3% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _G7
)
cls
echo 경고! 이 작업을 진행시 복구방법은 공장초기화만 가능합니다.
echo 통상적인 쓰래기앱만 제거합니다. 추가로 제거하실꺼면 직접하세요.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:removeapp
if "%main3%" == "1" ( for /f %%i in (Bin\APPL\KT_G7.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main3%" == "2" ( for /f %%i in (Bin\APPL\SKT_G7.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main3%" == "3" ( for /f %%i in (Bin\APPL\LGU_G7.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause

:_G8
cls
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main4=
set /p main4=통신사 숫자를 선택해주세요:
if %main4% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _G8
)
if %main4% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _G8
)
cls
echo 경고! 이 작업을 진행시 복구방법은 공장초기화만 가능합니다.
echo 통상적인 쓰래기앱만 제거합니다. 추가로 제거하실꺼면 직접하세요.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:removeapp
if "%main4%" == "1" ( for /f %%i in (Bin\APPL\KT_G8.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main4%" == "2" ( for /f %%i in (Bin\APPL\SKT_G8.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main4%" == "3" ( for /f %%i in (Bin\APPL\LGU_G8.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause

:_v30
cls
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main5=
set /p main5=통신사 숫자를 선택해주세요:
if %main5% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _v30
)
if %main5% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _v30
)
cls
echo 경고! 이 작업을 진행시 복구방법은 공장초기화만 가능합니다.
echo 통상적인 쓰래기앱만 제거합니다. 추가로 제거하실꺼면 직접하세요.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:removeapp
if "%main5%" == "1" ( for /f %%i in (Bin\APPL\KT_V30.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main5%" == "2" ( for /f %%i in (Bin\APPL\SKT_V30.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main5%" == "3" ( for /f %%i in (Bin\APPL\LGU_V30.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause

:_v40
cls
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main6=
set /p main6=통신사 숫자를 선택해주세요:
if %main6% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _v40
)
if %main6% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _v40
)
cls
echo 경고! 이 작업을 진행시 복구방법은 공장초기화만 가능합니다.
echo 통상적인 쓰래기앱만 제거합니다. 추가로 제거하실꺼면 직접하세요.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:removeapp
if "%main6%" == "1" ( for /f %%i in (Bin\APPL\KT_V40.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main6%" == "2" ( for /f %%i in (Bin\APPL\SKT_V40.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main6%" == "3" ( for /f %%i in (Bin\APPL\LGU_V40.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause

:_v50
cls
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main7=
set /p main7=통신사 숫자를 선택해주세요:
if %main7% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto _v50
)
if %main7% GTR 3 (
	echo 잘못 입력하셨습니다.
	pause
	goto _v50
)
cls
echo 경고! 이 작업을 진행시 복구방법은 공장초기화만 가능합니다.
echo 통상적인 쓰래기앱만 제거합니다. 추가로 제거하실꺼면 직접하세요.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:removeapp
if "%main7%" == "1" ( for /f %%i in (Bin\APPL\KT_V50.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main7%" == "2" ( for /f %%i in (Bin\APPL\SKT_V50.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))
if "%main7%" == "3" ( for /f %%i in (Bin\APPL\LGU_V50.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i 패키지 처리중
))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause