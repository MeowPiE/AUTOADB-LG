@echo off
:main
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
echo 4.�α�����+��������
echo.
echo 5.������
set main=
set /p main=���ڸ� �Է����ּ��� :

if  "%main%" == "1" goto _help
if  "%main%" == "2" goto _package
if  "%main%" == "3" goto _filter
if  "%main%" == "4" goto _filesave
if  "%main%" == "5" goto _EXIT

if %main% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
if %main% GTR 5 (
	echo �߸� �Է��ϼ̽��ϴ�.
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
echo ���͸� �� �±׸� �Է����ּ���
echo �±״� �� ��Ű�� �� �Դϴ�.
echo.
set %%=
set /p %%= �±� �Է� :
cls
echo ���͸� ������ ������
echo V/D/I/W/E/F/S
set %%%=
set /p %%%= ���� �Է� :
cls
echo �Է��Ͻ� ��ɾ��
echo adb logcat -%% -%%% �Դϴ�.
echo �����Ͻðڽ��ϱ�?



