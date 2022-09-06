@echo off
mkdir %LocalAppData%\WindowsSpotlight_WALLPAPER
cd %LocalAppData%\WindowsSpotlight_WALLPAPER
del *.* /f /q
cd %LocalAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
copy *.* %LocalAppData%\WindowsSpotlight_WALLPAPER
cd %LocalAppData%\WindowsSpotlight_WALLPAPER
ren * *.jpg
cls
CHOICE /C 12 /M "Open the folder with images [2=No,1=Yes]"

IF ERRORLEVEL 2 GOTO No
IF ERRORLEVEL 1 GOTO Explorer

:Explorer
explorer %LocalAppData%\WindowsSpotlight_WALLPAPER

:No
GOTO End

:End