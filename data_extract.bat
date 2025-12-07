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
    timeout /t 0.15 /nobreak >nul
)

echo.
echo      Extracting browser data...
timeout /t 1 /nobreak >nul
echo      [OK] Browser history extracted
timeout /t 0.5 /nobreak >nul
echo      [OK] Saved passwords located
timeout /t 0.5 /nobreak >nul
echo      [OK] Cookies copied
timeout /t 0.5 /nobreak >nul

echo.
echo      Compiling system information...
timeout /t 1 /nobreak >nul
echo      [OK] System hostname: %COMPUTERNAME%
timeout /t 0.5 /nobreak >nul
echo      [OK] User account: %USERNAME%
timeout /t 0.5 /nobreak >nul
echo      [OK] Windows version: Windows 7
timeout /t 0.5 /nobreak >nul

echo.
echo      [OK] Data extraction complete
echo      [OK] All files catalogued
timeout /t 2 /nobreak >nul
exit

