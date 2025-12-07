@echo off
mode con: cols=90 lines=35
title CRITICAL SYSTEM FAILURE
color 0c
cls
echo.
echo ████████████████████████████████████████████████████████████████████████████████
echo █ WARNING: YOUR SYSTEM HAS BEEN COMPROMISED BY UNKNOWN MALWARE                █
echo ████████████████████████████████████████████████████████████████████████████████
ping -n 3 127.0.0.1 >nul

color 4f
echo.
echo                          ████████ ACCESS DENIED ████████
echo.
echo   All files are now being ENCRYPTED with military-grade AES-256...
ping -n 2 127.0.0.1 >nul

for /l %%i in (1,1,15) do (
    <nul set /p "=Encrypting C:\Users\%USERNAME%\%%i.Encrypted... "
    <nul set /p "="
    for /l %%b in (1,1,10) do <nul set /p "=█"
    echo.
    ping -n 1 127.0.0.1 >nul
)

color cf
echo.
echo ████████████████████████████████████████████████████████████████████████████████
echo █ 47 CRITICAL THREATS DETECTED — YOUR PERSONAL FILES ARE BEING DELETED         █
echo ████████████████████████████████████████████████████████████████████████████████
ping -n 3 127.0.0.1 >nul

for /l %%i in (10,-1,1) do (
    cls
    color 4f
    echo.
    echo                        FILES ARE BEING PERMANENTLY DELETED
    echo.
    echo                         Deleting in %%i seconds...
    echo.
    echo   C:\Users\%USERNAME%\Desktop\*.*        [DELETED]
    echo   C:\Users\%USERNAME%\Documents\*.*      [DELETED]
    echo   C:\Users\%USERNAME%\Pictures\*.*       [DELETED]
    echo   C:\Users\%USERNAME%\Downloads\*.*      [DELETED]
    ping -n 2 127.0.0.1 >nul
)

color 0c
cls
echo ████████████████████████████████████████████████████████████████████████████████
echo █ PAY 0.5 BTC WITHIN 24 HOURS TO: 1K1LLY0URPCx66666xDEADxBEEF              █
echo █ OR ALL YOUR FILES WILL BE GONE FOREVER                                     █
echo ████████████████████████████████████████████████████████████████████████████████
ping -n 4 127.0.0.1 >nul

:: Fake keyboard lock + beeps
echo.
echo LOCKING KEYBOARD AND MOUSE...
ping -n 2 127.0.0.1 >nul
for /l %%i in (1,1,20) do <nul set /p "=" & ping -n 1 127.0.0.1 >nul

:: Fake BSOD (Blue Screen of Death)
cls
color 1f
echo.
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo.
echo *** STOP: 0x0000007B (0xF78D2524,0xC0000034,0x00000000,0x00000000)
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, follow
echo these steps:
echo.
echo Check for viruses on your computer. Remove any newly installed
echo hard drives or hard drive controllers.
echo.
echo Technical information:
echo *** STOP: 0x000000F4 (0x00000003,0x85AD7A80,0x85AD7BF4,0x805D1206)
echo.
echo Beginning dump of physical memory
echo Physical memory dump complete.
echo Contact your system administrator or technical support group.

:: Final scare — looks like it’s stuck
echo.
echo SYSTEM HALTED — NO BOOTABLE DEVICE FOUND
ping -n 8 127.0.0.1 >nul
exit
