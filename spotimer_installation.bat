@echo off
copy "%~dp0spotimer_configuration.bat" "c:\Users\%username%\AppData\Roaming\Spotify\spotimer_configuration.bat"
copy "%~dp0spotimer.lnk" "c:\Users\%username%\Desktop\spotimer.lnk"
copy "%~dp0spotimer_configuration.lnk" "c:\Users\%username%\Desktop\spotimer_configuration.lnk"
exit