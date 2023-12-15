@echo off

REM ~ Basic Setting
	mode con:cols=81 lines=25& ::WindowSetting
	set app=.NET Framework 3.5& ::AppName
	set author=LahmiAcx& ::Author
	set ver=2.2& ::AppVersion
	set released=Dec 16, 2023& ::ReleaseDate
	set winver=Windows 10 version 1909, OS Build 18363.418& ::WinVer
	title %app%& ::Title


REM ~ Execute
	cd /d "%~dp0"& ::Put location to current directory
	goto Start


REM ~ Start
	:Start
		cls
		echo Starting
		ping -n 2 localhost > %temp%\nfx35_start
		cls
		echo Starting.
		ping -n 2 localhost > %temp%\nfx35_start
		cls
		echo Starting..
		ping -n 2 localhost > %temp%\nfx35_start
		cls
		echo Starting...
		ping -n 2 localhost > %temp%\nfx35_start
		del %temp%\nfx35_start
		goto LoadScreen

	:LoadScreen
		setlocal enableextensions enabledelayedexpansion
		for /l %%a in (0 3 100) do (
			call :LoadingAnimation %%a
			>nul ping -n 1 "" 
		)
		goto AdminCheck

	:LoadingAnimation percent
		setlocal enableextensions enabledelayedexpansion
		set "fill=[44m                                        [0m"
		set /a "chars=2+%~1/2"
		set "spaces=!fill:~%chars%!"
		set "loadBar=!fill:~0,%chars%![40m [0m!"
		(
		cls
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo(                              [1m[34m%app%[0m[0m 
		echo.
		echo.
		echo(                   %loadBar%
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		)
		goto :eof


REM ~ Administrative rights checking
	:AdminCheck
		net session >nul 2>&1
		if %errorLevel% == 0 (
		goto MainSystem
		
		) else (
	
	
REM ~ App running without administrative right
		cls
		timeout /t 0 > %temp%\nfx35_nonadmin
		echo.
		echo.
		echo        [1mAdministrator[0m   [1m[41m  Off  [0m[0m                         [1m[34m%app%[0m[0m
		echo.
		timeout /t 1 > %temp%\nfx35_nonadmin
		echo        [1mInstaller program by[0m [1m[34m%author%[0m[0m
		timeout /t 0 > %temp%\nfx35_nonadmin
		echo        [1mVersion %ver% ^(%released%^)[0m
		timeout /t 0 > %temp%\nfx35_nonadmin
		echo        [1mCreated based on %winver%[0m
		echo.
		echo.
		timeout /t 1 > %temp%\nfx35_nonadmin
		echo        ^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=   What is going happened^?   ^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=
		echo        ^=                                                                 ^=
		echo        ^=                                                                 ^=
		echo        ^=                                                                 ^=
		echo        ^=        This program is opened without administrator rights.     ^=
		echo        ^=        Please re^-open this program with administrator rights    ^=
		echo        ^=        by [1m[34mright-clicking[0m[0m the program, then select [1m[34mrun as[0m[0m        ^=
		echo        ^=        [1m[34madministrator[0m[0m.                                           ^=
		echo        ^=                                                                 ^=
		echo        ^=                                                                 ^=
		echo        ^=                                                                 ^=
		echo        ^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=^+^=
		echo.
		echo.
		timeout /t 0 > %temp%\nfx35_nonadmin
		echo                               [31mPress any key to exit[0m
		cd /d "%~dp0"
		pause> %temp%\nfx35_nonadmin
		del %temp%\nfx35_nonadmin
		goto Quit
		)


REM ~ App running with administrative right
	:MainSystem
		cls
		timeout /t 0 > %temp%\nfx35_admin
		echo.
		echo.
		echo        [1mAdministrator[0m   [1m[42m  On  [0m[0m                         [1m[34m%app%[0m[0m
		echo.
		timeout /t 1 > %temp%\nfx35_admin
		echo        [1mInstaller program by[0m [1m[34m%author%[0m[0m
		timeout /t 0 > %temp%\nfx35_admin
		echo        [1mVersion %ver% ^(%released%^)[0m
		timeout /t 0 > %temp%\nfx35_admin
		echo        [1mCreated based on %winver%[0m
		echo.
		echo.
		timeout /t 1 > %temp%\nfx35_admin
		del %temp%\nfx35_admin
		echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=   [1mMain Menu[0m   ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=           1 ^: Install x64 version                              ^=
		echo        ^=           2 ^: Install x86 version                              ^=
		echo        ^=           3 ^: Exit                                             ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
		echo.
		echo.
		set /p y= [44mSelected number:[0m   
		if '%y%' == '1' goto Install64
		if '%y%' == '2' goto Install86
		if '%y%' == '3' goto Quit
		if '%y%' == '%y%' goto InvalidInput
		goto MainSystem


REM ~ Invalid input
	:InvalidInput
		cls
		timeout /t 0 > %temp%\nfx35_invalid
		echo.
		echo.
		echo        [1mAdministrator[0m   [1m[42m  On  [0m[0m                         [1m[34m%app%[0m[0m
		echo.
		echo        [1mInstaller program by[0m [1m[34m%author%[0m[0m
		echo        [1mVersion %ver% ^(%released%^)[0m
		echo        [1mCreated based on %winver%[0m
		echo.
		echo.
		echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=    [1mWhat is happened?[0m   ^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=         [31mInvalid input[0m. Please input selected option in         ^=
		echo        ^=         number format only.                                    ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=                                                                ^=
		echo        ^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=^-^=
		echo.
		echo.
		echo                          [31mPress any key to re^-select[0m
		cd /d "%~dp0"
		pause> %temp%\nfx35_invalid
		del %temp%\nfx35_invalid
		cls
		goto MainSystem


REM ~ Install for x64 architecture
	:Install64
		title %app% x64
		cls
		timeout /t 0 > %temp%\nfx35_install64
		echo.
		echo.
		echo                                                    [1m[34m%app% x64[0m[0m
		echo.
		echo.
		timeout /t 1 > %temp%\nfx35_install64
		echo Installer program by [1m[34m%author%[0m[0m
		timeout /t 0 > %temp%\nfx35_install64
		echo Version %ver% ^(%released%^)
		timeout /t 0 > %temp%\nfx35_install64
		echo Created based on %winver%
		echo.
		timeout /t 1 > %temp%\nfx35_install64
		echo STATUS   [1m[42m INSTALLING [0m[0m
		timeout /t 1 > %temp%\nfx35_install64
		cd /d "%~dp0"
		Dism.exe /online /enable-feature /featurename:NetFX3 /All /Source:"%~dp0\Data\x64" /LimitAccess
		echo.
		echo.
		echo.
		timeout /t 1 > %temp%\nfx35_install64
		echo Program will take several time and automatically exit.
		timeout /t 0 > %temp%\nfx35_install64
		echo Please wait...
		timeout /t 3 /nobreak > %temp%\nfx35_install64
		del %temp%\nfx35_install64
		goto Quit


REM ~ Install for x86 architecture
	:Install86
		title %app% x86
		cls
		timeout /t 0 > %temp%\nfx35_install86
		echo.
		echo.
		echo                                                    [1m[34m%app% x86[0m[0m
		echo.
		echo.
		timeout /t 1 > %temp%\nfx35_install86
		echo Installer program by [1m[34m%author%[0m[0m
		timeout /t 0 > %temp%\nfx35_install86
		echo Version %ver% ^(%released%^)
		timeout /t 0 > %temp%\nfx35_install86
		echo Created based on %winver%
		echo.
		timeout /t 1 > %temp%\nfx35_install86
		echo STATUS   [1m[42m INSTALLING [0m[0m
		timeout /t 1 > %temp%\nfx35_install86
		cd /d "%~dp0"
		Dism.exe /online /enable-feature /featurename:NetFX3 /All /Source:"%~dp0\Data\x86" /LimitAccess
		echo.
		echo.
		echo.
		timeout /t 1 > %temp%\nfx35_install86
		echo Program will take several time and automatically exit.
		timeout /t 0 > %temp%\nfx35_install86
		echo Please wait...
		timeout /t 3 /nobreak > %temp%\nfx35_install86
		del %temp%\nfx35_install86
		goto Quit


REM ~ Exit interface
	:Quit
		cls
		setlocal enableextensions enabledelayedexpansion
		for /l %%a in (0 3 100) do (
			call :ExitAnimation %%a
			>nul ping -n 1 "" 
		)
		exit

	:ExitAnimation percent
		setlocal enableextensions enabledelayedexpansion
		set "fill=[44m                                        [0m"
		set /a "chars=2+%~1/2"
		set "spaces=!fill:~%chars%!"
		set "loadBar=!fill:~0,%chars%![40m [0m!"
		(
		cls
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo(                                [1m[34mNow exiting...[0m[0m 
		echo.
		echo.
		echo(                   %loadBar%
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		)
		goto :eof