@echo off
:_chuno
cls
TITLE chuno v 1.1
echo �߳븶ũ(��Ż縶ũ)
echo volte ��ũ
echo �ΰ��� ���¹ٿ��� �����ִ� ���α׷��Դϴ�.
echo ��� �۾��� �ڵ����� ����˴ϴ�.

..\Bin\ADB\adb.exe push ..\Bin\APP\volte.apk /storage/emulated/0/Download
..\Bin\ADB\adb.exe push ..\Bin\APP\CarrierIsGone.apk /storage/emulated/0/Download
..\Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/volte.apk
..\Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/CarrierIsGone.apk
..\Bin\ADB\adb.exe shell cmd overlay enable com.android.system.ui.status.bars
..\Bin\ADB\adb.exe shell cmd overlay enable com.yong.systemui.clean

echo �۾��� �Ϸ�Ǿ����ϴ�!
pause
exit
