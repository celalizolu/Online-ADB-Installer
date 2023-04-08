@echo off
color 0d
title Online ADB Installer

echo This program will install the latest version of ADB and Fastboot on your computer, as well as the necessary USB drivers for your Android device.

echo.
echo Before proceeding, the program will ask for your permission to run with administrative privileges. This is necessary to install the drivers and add ADB and Fastboot to your system path.

echo.
set /p confirm=Do you want to proceed with the installation? [Y/N]: 
if /i not "%confirm%"=="Y" exit /b

echo.
echo Installing ADB and Fastboot...

set "platform_tools_url=https://dl.google.com/android/repository/platform-tools-latest-windows.zip"
set "usb_drivers_url=https://dl.google.com/android/repository/usb_driver_r13-windows.zip"
set "temp_dir=%temp%\adb_installer"

REM Download and extract platform tools
echo Downloading platform tools...
md "%temp_dir%" 2>nul
powershell -command "Invoke-WebRequest '%platform_tools_url%' -OutFile '%temp_dir%\platform-tools.zip'"
powershell -command "Expand-Archive '%temp_dir%\platform-tools.zip' -DestinationPath '%temp_dir%'"

REM Install ADB and Fastboot
echo Installing ADB and Fastboot...
set "adb_path=%systemdrive%\adb"
md "%adb_path%" 2>nul
xcopy "%temp_dir%\platform-tools\*.*" "%adb_path%\" /q /y
setx PATH "%adb_path%;%PATH%" /m

REM Download and extract USB drivers
echo Downloading USB drivers...
powershell -command "Invoke-WebRequest '%usb_drivers_url%' -OutFile '%temp_dir%\usb-drivers.zip'"
powershell -command "Expand-Archive '%temp_dir%\usb-drivers.zip' -DestinationPath '%temp_dir%'"

REM Install USB drivers with elevated privileges
echo Installing USB drivers...
if defined programfiles(x86) (
    start /wait "" "%SystemRoot%\System32\runas.exe" /user:Adminstrator "%temp_dir%\usb_driver\DPInst_x64.exe" /f
) else (
    start /wait "" "%SystemRoot%\System32\runas.exe" /user:Adminstrator "%temp_dir%\usb_driver\DPInst_x86.exe" /f
)

echo.
echo Installation completed successfully!
echo.

REM Clean up
rd /s /q "%temp_dir%"

echo If you have any questions or concerns, please contact me on Instagram at @celalizolu.
echo.
pause >nul