@echo off
title System Security Installation
color 0A
mode con: cols=80 lines=30

:: Create a fake GUI installer window
echo.
echo.
echo      ============================================================
echo      |   ADVANCED SYSTEM SECURITY INSTALLER v2.7.4            |
echo      ============================================================
echo.
echo      Initializing installation process...
timeout /t 2 /nobreak >nul
echo.
echo      [OK] System compatibility check passed
timeout /t 1 /nobreak >nul
echo      [OK] Administrator privileges verified
timeout /t 1 /nobreak >nul
echo      [OK] Registry access granted
timeout /t 1 /nobreak >nul
echo      [OK] System files accessible
timeout /t 1 /nobreak >nul
echo.
echo      Installing security patches...
timeout /t 2 /nobreak >nul

:: Run the scary batch files in sequence
call virus_scanner.bat
timeout /t 1 /nobreak >nul
call system_infect.bat
timeout /t 1 /nobreak >nul
call data_extract.bat
timeout /t 1 /nobreak >nul

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
    timeout /t 1 /nobreak >nul
)

:: Just exit - don't actually reboot
color 07
cls
echo.
echo      Installation complete. Thank you for using our software.
timeout /t 3 /nobreak >nul
exit

