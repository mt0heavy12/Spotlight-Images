@echo off
mkdir %LocalAppData%\Spotlight
cd %LocalAppData%\Spotlight
del *.* /f /q
cd %LocalAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
copy *.* %LocalAppData%\Spotlight
cd %LocalAppData%\Spotlight
ren * *.jpg
explorer %LocalAppData%\Spotlight