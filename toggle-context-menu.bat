@echo off
title Toggle Windows 11 Right-Click Context Menu
color 0A

:MENU
cls
echo ---------------------------------------------
echo     Windows 11 Context Menu Toggle Tool
echo ---------------------------------------------
echo.
echo  [1] Enable Classic Context Menu
echo  [2] Revert to Modern Context Menu
echo  [3] Exit
echo.
set /p choice=Choose an option (1-3): 

if "%choice%"=="1" goto ENABLE
if "%choice%"=="2" goto DISABLE
if "%choice%"=="3" exit
goto MENU

:ENABLE
echo.
echo Enabling classic context menu...
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
echo Restarting Explorer...
taskkill /f /im explorer.exe >nul
start explorer.exe
echo Classic menu enabled!
pause
goto MENU

:DISABLE
echo.
echo Reverting to modern context menu...
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
echo Restarting Explorer...
taskkill /f /im explorer.exe >nul
start explorer.exe
echo Modern menu restored!
pause
goto MENU
