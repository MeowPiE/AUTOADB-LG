@echo off
:_uninstall
cls
TITLE Uninstaller v 2.0
echo ������� ���� �������ּ���
echo.
echo 1.G6 2.G7 3.G8 4.V30
echo.
echo 5.V40 6.V50
echo.
set main=
set /p main=���ڸ� �Է����ּ��� :

if "%main%" == "1" goto _G6
if "%main%" == "2" goto _G7
if "%main%" == "3" goto _G8
if "%main%" == "4" goto _v30
if "%main%" == "5" goto _v40
if "%main%" == "6" goto _v50
if %main% LSS 1(
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
if %main% GTR 6 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto main
)
:_G6
cls
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main2=
set /p main2=��Ż� ���ڸ� �������ּ���:
if %main2% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G6
)
if %main2% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G6
)
cls
echo ���! �� �۾��� ����� ��������� �����ʱ�ȭ�� �����մϴ�.
echo ������� ������۸� �����մϴ�. �߰��� �����Ͻǲ��� �����ϼ���.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:removeapp
if "%main2%" == "1" ( for /f %%i in (Bin\APPL\KT_G6.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main2%" == "2" ( for /f %%i in (Bin\APPL\SKT_G6.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main2%" == "3" ( for /f %%i in (Bin\APPL\LGU_G6.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause

:_G7
cls
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main3=
set /p main3=��Ż� ���ڸ� �������ּ���:
if %main3% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G7
)
if %main3% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G7
)
cls
echo ���! �� �۾��� ����� ��������� �����ʱ�ȭ�� �����մϴ�.
echo ������� ������۸� �����մϴ�. �߰��� �����Ͻǲ��� �����ϼ���.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:removeapp
if "%main3%" == "1" ( for /f %%i in (Bin\APPL\KT_G7.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main3%" == "2" ( for /f %%i in (Bin\APPL\SKT_G7.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main3%" == "3" ( for /f %%i in (Bin\APPL\LGU_G7.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause

:_G8
cls
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main4=
set /p main4=��Ż� ���ڸ� �������ּ���:
if %main4% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G8
)
if %main4% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _G8
)
cls
echo ���! �� �۾��� ����� ��������� �����ʱ�ȭ�� �����մϴ�.
echo ������� ������۸� �����մϴ�. �߰��� �����Ͻǲ��� �����ϼ���.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:removeapp
if "%main4%" == "1" ( for /f %%i in (Bin\APPL\KT_G8.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main4%" == "2" ( for /f %%i in (Bin\APPL\SKT_G8.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main4%" == "3" ( for /f %%i in (Bin\APPL\LGU_G8.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause

:_v30
cls
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main5=
set /p main5=��Ż� ���ڸ� �������ּ���:
if %main5% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v30
)
if %main5% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v30
)
cls
echo ���! �� �۾��� ����� ��������� �����ʱ�ȭ�� �����մϴ�.
echo ������� ������۸� �����մϴ�. �߰��� �����Ͻǲ��� �����ϼ���.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:removeapp
if "%main5%" == "1" ( for /f %%i in (Bin\APPL\KT_V30.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main5%" == "2" ( for /f %%i in (Bin\APPL\SKT_V30.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main5%" == "3" ( for /f %%i in (Bin\APPL\LGU_V30.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause

:_v40
cls
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main6=
set /p main6=��Ż� ���ڸ� �������ּ���:
if %main6% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v40
)
if %main6% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v40
)
cls
echo ���! �� �۾��� ����� ��������� �����ʱ�ȭ�� �����մϴ�.
echo ������� ������۸� �����մϴ�. �߰��� �����Ͻǲ��� �����ϼ���.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:removeapp
if "%main6%" == "1" ( for /f %%i in (Bin\APPL\KT_V40.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main6%" == "2" ( for /f %%i in (Bin\APPL\SKT_V40.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main6%" == "3" ( for /f %%i in (Bin\APPL\LGU_V40.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause

:_v50
cls
echo �ش� �޴����� ��Ż縦 �������ּ���.
echo ���� ��ġ�� �߿����� ��Ż縦 ���������մϴ�.
echo.
echo 1.KT
echo.
echo 2.SKT
echo.
echo 3.U+
echo.
set main7=
set /p main7=��Ż� ���ڸ� �������ּ���:
if %main7% LSS 1 ( 
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v50
)
if %main7% GTR 3 (
	echo �߸� �Է��ϼ̽��ϴ�.
	pause
	goto _v50
)
cls
echo ���! �� �۾��� ����� ��������� �����ʱ�ȭ�� �����մϴ�.
echo ������� ������۸� �����մϴ�. �߰��� �����Ͻǲ��� �����ϼ���.
echo �۾��� ���α׷��� ����Ǹ� �ɰ��� ������ �߻��մϴ�!

:removeapp
if "%main7%" == "1" ( for /f %%i in (Bin\APPL\KT_V50.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main7%" == "2" ( for /f %%i in (Bin\APPL\SKT_V50.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))
if "%main7%" == "3" ( for /f %%i in (Bin\APPL\LGU_V50.txt) do (
	Bin\ADB\adb.exe shell pm uninstall --user 0 %%i
	echo %%i ��Ű�� ó����
))

echo �۾��� �Ϸ�Ǿ����ϴ�! �ƹ�Ű�� ������ �ʱ�ȭ������ ���ư��ϴ�.
pause