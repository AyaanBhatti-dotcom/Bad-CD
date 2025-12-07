@echo off
setlocal enabledelayedexpansion
color 0E
title SYSTEM MODIFICATION
cls
echo.
echo.
echo      ============================================================
echo      |   MODIFYING SYSTEM REGISTRY...                          |
echo      ============================================================
echo.
echo      Accessing registry hives...
timeout /t 1 /nobreak >nul

:: Fake registry modifications
echo      [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]
echo      Modifying registry entries...
timeout /t 1 /nobreak >nul
echo      [OK] Registry entry modified: HKLM\SOFTWARE\...
timeout /t 0.5 /nobreak >nul
echo      [OK] Registry entry modified: HKCU\Software\...
timeout /t 0.5 /nobreak >nul
echo      [OK] Registry entry modified: HKLM\SYSTEM\CurrentControlSet\...
timeout /t 0.5 /nobreak >nul

echo.
echo      Injecting system files...
for /l %%i in (1,1,20) do (
    set /a progress=%%i * 5
    echo      Injecting file %%i/20... !progress!%%
    timeout /t 0.2 /nobreak >nul
)

echo.
echo      [OK] System modifications complete
echo      [OK] All registry entries updated
echo      [OK] System files injected successfully
timeout /t 2 /nobreak >nul
exit

