@echo off
:_recovery
cls
TITLE recovery v 2.1
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
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
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
echo 경고! adb로 삭제했던 모든 앱이 복원이 됩니다.
echo 통신사 앱 시스템 앱 가리지 않고 복원이 됩니다.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:recoverapp
	if "%main2%" == "1" ( for /f %%i in (Bin\APPL\K_G6.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main2%" == "2" ( for /f %%i in (Bin\APPL\SK_G6.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main2%" == "3" ( for /f %%i in (Bin\APPL\U_G6.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
goto main

:_G7
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
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
echo 경고! adb로 삭제했던 모든 앱이 복원이 됩니다.
echo 통신사 앱 시스템 앱 가리지 않고 복원이 됩니다.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:recoverapp
	if "%main3%" == "1" ( for /f %%i in (Bin\APPL\K_G7.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main3%" == "2" ( for /f %%i in (Bin\APPL\SK_G7.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main3%" == "3" ( for /f %%i in (Bin\APPL\U_G7.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
goto main

:_G8
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set /p main2=통신사 숫자를 선택해주세요:
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
echo 경고! adb로 삭제했던 모든 앱이 복원이 됩니다.
echo 통신사 앱 시스템 앱 가리지 않고 복원이 됩니다.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:recoverapp
	if "%main4%" == "1" ( for /f %%i in (Bin\APPL\K_G8.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main4%" == "2" ( for /f %%i in (Bin\APPL\SK_G8.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main4%" == "3" ( for /f %%i in (Bin\APPL\U_G8.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
goto main

:_v30
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
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
echo 경고! adb로 삭제했던 모든 앱이 복원이 됩니다.
echo 통신사 앱 시스템 앱 가리지 않고 복원이 됩니다.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:recoverapp
	if "%main5%" == "1" ( for /f %%i in (Bin\APPL\K_V30.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main5%" == "2" ( for /f %%i in (Bin\APPL\SK_V30.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main5%" == "3" ( for /f %%i in (Bin\APPL\U_V30.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
goto main

:_v40
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
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
echo 경고! adb로 삭제했던 모든 앱이 복원이 됩니다.
echo 통신사 앱 시스템 앱 가리지 않고 복원이 됩니다.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:recoverapp
	if "%main6%" == "1" ( for /f %%i in (Bin\APPL\K_V40.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main6%" == "2" ( for /f %%i in (Bin\APPL\SK_V40.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main6%" == "3" ( for /f %%i in (Bin\APPL\U_V40.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
goto main

:_v50
echo 해당 휴대폰의 통신사를 선택해주세요.
echo 현재 설치된 펌웨어의 통신사를 기준으로합니다.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
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
echo 경고! adb로 삭제했던 모든 앱이 복원이 됩니다.
echo 통신사 앱 시스템 앱 가리지 않고 복원이 됩니다.
echo 작업중 프로그램이 종료되면 심각한 오류가 발생합니다!

:recoverapp
	if "%main7%" == "1" ( for /f %%i in (Bin\APPL\K_V50.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main7%" == "2" ( for /f %%i in (Bin\APPL\SK_V50.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))
	if "%main7%" == "3" ( for /f %%i in (Bin\APPL\U_V50.txt) do (
		Bin\ADB\adb.exe shell cmd package install-existing %%i
		echo %%i 패키지 처리중
	))

echo 작업이 완료되었습니다! 아무키나 누르면 초기화면으로 돌아갑니다.
pause
goto main