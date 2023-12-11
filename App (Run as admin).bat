@echo off

rem DATA
mode con:cols=80 lines=25
set app=.NET Framework 3.5
set author=LahmiAcx
set ver=2.2
set released=Dec 12, 2023
set winver=Windows 10 version 1909, OS Build 18363.418
title %app%

rem EXECUTE
cd /d "%~dp0"
goto ADMINRIGHT

rem ADMIN RIGHT CHECK
:ADMINRIGHT
net session >nul 2>&1
if %errorLevel% == 0 (
goto MENU
) else (
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[41m ADMIN RIGHT WAS NOT DETECTED [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=   [1mWhat should you do?[0m   ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=        Re-open this program by right click, then select        ^=
echo        ^=        [1m[34mRun as administrator[0m.                                   ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo                               [31mPress any key to exit[0m
cd /d "%~dp0"
pause>"%temp%\nonadmin.netfx35"
del "%temp%\nonadmin.netfx35"
exit
)

rem IF PROGRAM WAS RUNNING WITH ADMIN PERMISSION
:MENU
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[42m ADMIN RIGHT DETECTED [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=   [1mMain Menu[0m   ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=           1 ^: Install x64 version                              ^=
echo        ^=           2 ^: Install x86 version                              ^=
echo        ^=           3 ^: Exit                                             ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
set /p y= [44mSelected number:[0m   
if '%y%' == '1' goto OPT1
if '%y%' == '2' goto OPT2
if '%y%' == '3' goto QUIT
if '%y%' == '%y%' goto WRONGANSWER
goto MENU

rem IF INPUT WAS INVALID
:WRONGANSWER
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[42m ADMIN RIGHT DETECTED [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=   [1mWhat is going happen?[0m   ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=          [31mInvalid input[0m. Please input selected option           ^=
echo        ^=          in number format only.                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo                          [31mPress any key to re-select[0m
cd /d "%~dp0"
pause>"%temp%\netfx35.nonadmin"
del "%temp%\netfx35.nonadmin"
cd /d "%~dp0"
cls
goto MENU

:OPT1
cls
title %app% x64
echo.
echo                                                   ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                     [1m[34m%app% x64[0m[0m
echo                                                   ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo Installer program by [1m[34m%author%[0m[0m
echo Version %ver% ^(%released%^)
echo Created based on %winver%
echo.
echo STATUS   [1m[42m INSTALLING [0m[0m
cd /d "%~dp0"
Dism.exe /online /enable-feature /featurename:NetFX3 /All /Source:"%~dp0\Data\x64" /LimitAccess
echo Program will take several time and automatically exit.
timeout /t 3 /nobreak > %temp%\install.netfx35
del %temp%\install.netfx35
goto QUIT

:OPT2
cls
title %app% x86
echo.
echo                                                   ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                     [1m[34m%app% x86[0m[0m
echo                                                   ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo Installer program by [1m[34m%author%[0m[0m
echo Version %ver% ^(%released%^)
echo Created based on %winver%
echo.
echo STATUS   [1m[42m INSTALLING [0m[0m
cd /d "%~dp0"
Dism.exe /online /enable-feature /featurename:NetFX3 /All /Source:"%~dp0\Data\x86" /LimitAccess
echo Program will take several time and automatically exit.
timeout /t 3 /nobreak > %temp%\install.netfx35
del %temp%\install.netfx35
goto QUIT

:QUIT
title %app%
cls
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait                            ^=
echo        ^=              ^[                              ^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait.                           ^=
echo        ^=              ^[[1m[44m   [0m[0m                           ^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait..                          ^=
echo        ^=              ^[[1m[44m       [0m[0m                       ^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait...                         ^=
echo        ^=              ^[[1m[44m             [0m[0m                 ^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait                            ^=
echo        ^=              ^[[1m[44m                 [0m[0m             ^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait.                           ^=
echo        ^=              ^[[1m[44m                       [0m[0m       ^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait..                          ^=
echo        ^=              ^[[1m[44m                          [0m[0m    ^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
cls
echo.
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo                                                        [1m[34m%app%[0m[0m
echo                                                       ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
echo        Installer program by [1m[34m%author%[0m[0m
echo        Version %ver% ^(%released%^)
echo        Created based on %winver%
echo.
echo.
echo        STATUS   [1m[44m STOPPING PROGRAM [0m[0m
echo.
echo.
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=                         Please wait...                         ^=
echo        ^=              ^[[1m[44m                              [0m[0m^]                  ^=
echo        ^=                                                                ^=
echo        ^=                                                                ^=
echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
echo.
echo.
ping -n 2 localhost > %temp%\exitanimation.netfx35
del %temp%\exitanimation.netfx35
exit