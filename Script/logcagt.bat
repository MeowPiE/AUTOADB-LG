@echo off
:_logcat
cls
echo �α��� ���� ���α׷� V 1.0
echo ***������ ���� ���α׷��Դϴ�. �߸������̴ٸ� ��������***
echo.
echo 1.����
echo.
echo 2.Ư�� ��Ű�� �α� ����
echo.
echo 3.������ ���� �α� ����
echo.
echo 4.
echo.
set main=
set /p main=���ڸ� �Է����ּ��� :




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