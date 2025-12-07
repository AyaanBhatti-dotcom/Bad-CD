@echo off
cd /d "%~dp0"
title System Security Installation
color 0A
mode con: cols=80 lines=30 2>nul

:: Create a fake GUI installer window
echo.
echo.
echo      ============================================================
echo      |   ADVANCED SYSTEM SECURITY INSTALLER v2.7.4            |
echo      ============================================================
echo.
echo      Initializing installation process...
ping 127.0.0.1 -n 3 >nul 2>&1
echo.
echo      [OK] System compatibility check passed
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] Administrator privileges verified
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] Registry access granted
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] System files accessible
ping 127.0.0.1 -n 2 >nul 2>&1
echo.
echo      Installing security patches...
ping 127.0.0.1 -n 3 >nul 2>&1

:: Run the scary batch files in sequence
call "%~dp0virus_scanner.bat"
ping 127.0.0.1 -n 2 >nul 2>&1
call "%~dp0system_infect.bat"
ping 127.0.0.1 -n 2 >nul 2>&1
call "%~dp0data_extract.bat"
ping 127.0.0.1 -n 2 >nul 2>&1

echo.
echo      [OK] Installation complete!
echo.
echo      Press any key to reboot system...
pause >nul

:: Show fake reboot message
cls
color 0C
echo.
echo.
echo      SYSTEM REBOOTING IN 10 SECONDS...
echo      DO NOT POWER OFF YOUR COMPUTER
echo.
for /l %%i in (10,-1,1) do (
    echo      %%i...
    ping 127.0.0.1 -n 2 >nul 2>&1
)

:: Just exit - don't actually reboot
color 07
cls
echo.
echo      Installation complete. Thank you for using our software.
ping 127.0.0.1 -n 4 >nul 2>&1
exit

