@echo off
:_chuno
cls
echo �߳븶ũ(��Ż縶ũ)
echo volte ��ũ
echo �ΰ��� ���¹ٿ��� �����ִ� ���α׷��Դϴ�.
echo ��� �۾��� �ڵ����� ����˴ϴ�.

..\ADB\adb.exe push ..\APP\volte.apk /storage/emulated/0/Download
..\ADB\adb.exe push ..\APP\CarrierIsGone.apk /storage/emulated/0/Download
..\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/volte.apk
..\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/CarrierIsGone.apk
..\ADB\adb.exe shell cmd overlay enable com.android.system.ui.status.bars
..\ADB\adb.exe shell cmd overlay enable com.yong.systemui.clean

echo �۾��� �Ϸ�Ǿ����ϴ�!
pause
exit
