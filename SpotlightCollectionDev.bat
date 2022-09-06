@echo off
mkdir %LocalAppData%\WindowsSpotlight_WALLPAPER
CHOICE /C 34 /M "Delete everything in the Spotlight image collection folder [3=Yes,4=No]"

IF ERRORLEVEL 4 GOTO Def
IF ERRORLEVEL 3 GOTO Del

:Def
cd %LocalAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
copy *.* %LocalAppData%\WindowsSpotlight_WALLPAPER
cd %LocalAppData%\WindowsSpotlight_WALLPAPER
ren * *.jpg

:Del
cd %LocalAppData%\WindowsSpotlight_WALLPAPER
del *.* /f /q
rmdir /s /q
cd %LocalAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
copy *.* %LocalAppData%\WindowsSpotlight_WALLPAPER
cd %LocalAppData%\WindowsSpotlight_WALLPAPER
ren * *.jpg

CHOICE /C 12 /M "Open the folder with images [2=No,1=Yes]"

IF ERRORLEVEL 2 GOTO No
IF ERRORLEVEL 1 GOTO Explorer

:Explorer
explorer %LocalAppData%\WindowsSpotlight_WALLPAPER

:No
GOTO End

:End