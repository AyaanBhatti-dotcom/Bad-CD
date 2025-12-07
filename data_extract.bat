@echo off
setlocal enabledelayedexpansion
color 0D
title DATA EXTRACTION
cls
echo.
echo.
echo      ============================================================
echo      |   EXTRACTING SYSTEM DATA...                             |
echo      ============================================================
echo.
echo      Locating sensitive files...
timeout /t 1 /nobreak >nul

echo      Scanning user directories...
timeout /t 1 /nobreak >nul

:: Fake file scanning
for /l %%i in (1,1,30) do (
    set /a filetype=!random! %% 4
    if !filetype!==0 (
        echo      [FOUND] C:\Users\%USERNAME%\Documents\document%%i.pdf
    ) else if !filetype!==1 (
        echo      [FOUND] C:\Users\%USERNAME%\Pictures\image%%i.jpg
    ) else if !filetype!==2 (
        echo      [FOUND] C:\Users\%USERNAME%\Desktop\file%%i.txt
    ) else (
        echo      [FOUND] C:\Users\%USERNAME%\Downloads\item%%i.zip
    )
    ping 127.0.0.1 -n 2 >nul
)

echo.
echo      Extracting browser data...
timeout /t 1 /nobreak >nul
echo      [OK] Browser history extracted
ping 127.0.0.1 -n 2 >nul
echo      [OK] Saved passwords located
ping 127.0.0.1 -n 2 >nul
echo      [OK] Cookies copied
ping 127.0.0.1 -n 2 >nul

echo.
echo      Compiling system information...
timeout /t 1 /nobreak >nul
echo      [OK] System hostname: %COMPUTERNAME%
ping 127.0.0.1 -n 2 >nul
echo      [OK] User account: %USERNAME%
ping 127.0.0.1 -n 2 >nul
echo      [OK] Windows version: Windows 7
ping 127.0.0.1 -n 2 >nul

echo.
echo      [OK] Data extraction complete
echo      [OK] All files catalogued
timeout /t 2 /nobreak >nul
exit

