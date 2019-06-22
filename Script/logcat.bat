@echo off
:main
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
echo 4.로그추출+파일저장
echo.
echo 5.나가기
echo.
set main=
set /p main=숫자를 입력해주세요 :

if  "%main%" == "1" goto _help
if  "%main%" == "2" goto _package
if  "%main%" == "3" goto _filter
if  "%main%" == "4" goto _filesave
if  "%main%" == "5" goto _EXIT

if %main% LSS 1 ( 
	echo 잘못 입력하셨습니다.
	pause
	goto main
)
if %main% GTR 5 (
	echo 잘못 입력하셨습니다.
	pause
	goto main
)

:_help
cls
notepad ..\Bin\HELP\logcat.txt
pasue
goto main

:_package
cls
echo 필터링 할 태그를 입력해주세요
echo 태그는 앱 패키지 명 입니다.
echo.
set /p filter= 태그 입력 :
cls
echo 필터링 래밸을 고르세요
echo V/D/I/W/E/F/S
set /p level= 래벨 입력 :
cls
echo 입력하신 명령어는
echo adb logcat -%filter% -%level% 입니다.
echo 실행하시겠습니까?
set /p YN= (Y/N)? :

if /i "%YN%" == "Y" goto YES
if /i "%YN%" == "N" goto main

:YES
cls
echo -%filter% -%level% 를 필터링 합니다.
echo. 나가기는 ctrl+C를 누르시면 됩니다.
echo.
..\Bin\ADB\adb.exe logcat -%filter% -%level%