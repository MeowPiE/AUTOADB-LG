@echo off
:_logcat
cls
echo 로그켓 추출 프로그램 V 1.0
echo ***개발자 전용 프로그램입니다. 잘못들어오셨다면 나가세요***
echo.
echo 1.설명서
echo.
echo 2.특정 패키지 로그 추출
echo.
echo 3.선택한 레밸 로그 추출
echo.
echo 4.
echo.
set main=
set /p main=숫자를 입력해주세요 :




if %main% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto main
)
if %main% GTR 7 (
	echo 잘못 입력하셨습니다.
	pause
	goto main
)