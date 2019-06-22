@echo off
:_chuno
cls
TITLE chuno v 1.1
echo 추노마크(통신사마크)
echo volte 마크
echo 두개를 상태바에서 없에주는 프로그램입니다.
echo 모든 작업은 자동으로 진행됩니다.

..\Bin\ADB\adb.exe push ..\Bin\APP\volte.apk /storage/emulated/0/Download
..\Bin\ADB\adb.exe push ..\Bin\APP\CarrierIsGone.apk /storage/emulated/0/Download
..\Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/volte.apk
..\Bin\ADB\adb.exe shell pm install -r /storage/emulated/0/Download/CarrierIsGone.apk
..\Bin\ADB\adb.exe shell cmd overlay enable com.android.system.ui.status.bars
..\Bin\ADB\adb.exe shell cmd overlay enable com.yong.systemui.clean

echo 작업이 완료되었습니다!
pause
exit
