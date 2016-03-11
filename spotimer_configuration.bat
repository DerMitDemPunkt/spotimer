@echo off
echo ####################################
echo ## Installation of Spotimer 0.9.2 ##
echo ####################################
echo.
:menue

echo ####################################
echo ##### new(1)\quit(2)\remove(3) #####
echo ####################################
echo.
set /p nav=

if "%nav%" == "1" goto configure
if "%nav%" == "2" goto end
if "%nav%" == "3" goto uninstall

goto menue
:configure

echo ####################################
echo ###########Konfiguration ###########
echo ####################################
echo.
echo ####################################
echo #####Choose Runtime of Spotify #####
echo ####################################
echo.
set /p runtime=

echo ####################################
echo #########Spotify Autostart #########
echo ########### yes(1)\no(2) ###########
echo ####################################
echo.
set /p autostart=
echo.
echo ####################################
echo ######### Windows Shutdown #########
echo ########### yes(1)\no(2) ###########
echo ####################################
echo.
set /p winshutdown=
echo.
echo ####################################
echo ##Spotify Runtime is %runtime% sec##
if %autostart% == 1 echo ####Spotify autostart turned on ####
if %autostart% NEQ 1 echo ####Spotify autostart turned off ####
if %winshutdown% == 1 echo ####Windows shutdown turned on ####
if %winshutdown% NEQ 1 echo ####Windows shutdown turned off ####
echo ####################################
echo.
echo ####################################
echo ###### next(1)\new(2)\quit(3) ######
echo ####################################
echo.
set /p nav=

if "%nav%" == "1" goto install
if "%nav%" == "2" goto configure
if "%nav%" == "3" goto end
goto menue

:install

echo @echo off > c:\users\%username%\AppData\Roaming\spotify\spotimer.bat
echo REM ****Variablen**** >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
echo set runtime=%runtime% >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
echo set app=spotify >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
if "%autostart%" == "1"	echo set pathtoapp=c:\users\%%username%%\AppData\Roaming\Spotify\ >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
if "%autostart%" == "1"	echo REM ****Start der Anwendung**** >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
if "%autostart%" == "1"	echo start spotify %%pathtoapp%%%%app%% >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"	
echo REM ****Wartezeit**** >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
echo ping -n %%runtime%% localhost ^> nul >> c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
echo REM ****Anwendung beenden**** >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
echo tskill %%app%% >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
if "%winshutdown%" == "1" echo shutdown /p /f >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"	
echo REM ****Skript beenden**** >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
echo exit >> "c:\users\%username%\AppData\Roaming\spotify\spotimer.bat"
echo.
echo "Spotimer wurde installiert"
echo.
goto menue

:uninstall
erase "c:\Users\%username%\AppData\Roaming\Spotify\spotimer.bat"
erase "c:\Users\%username%\AppData\Roaming\Spotify\spotimer_configuration.bat"
erase "c:\Users\%username%\Desktop\spotimer.lnk"
erase "c:\Users\%username%\Desktop\spotimer_configuration.lnk"
echo.
echo "Spotimer wurde deinstalliert"
echo.
goto menue

:end

echo ####################################
echo ########Skript wird beendet ########
echo ####################################

pause

exit
