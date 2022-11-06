@ECHO OFF
mode con:cols=60 lines=10 > nul
set title=Gear Fit2 Music Manager v1.00 by Av. Ali BEYAZ
color 0a
title %title%
ECHO %title%
ECHO. 
ECHO - Enable debugging from settings/gear info
ECHO - Connect device same wifi network with PC
ECHO - Open wifi network details and find your IP address
ECHO - Write your IP there and press enter: 
ECHO - (for example: "IP: 192.168.1.5")
ECHO.
set /P ip=IP: 
cls
ECHO %title%
ECHO.
md "Music"
start "" "Music"
cls
@ECHO OFF
ECHO %title%
ECHO.
ECHO Press any key if mp3s copied to folder
pause > nul
cls
@ECHO OFF
ECHO %title%
ECHO.
sdb kill-server
sdb connect %ip%
ECHO Confirm on your Watch and press any key...
pause > nul
cls
@ECHO OFF
ECHO %title%
ECHO.
sdb push  "Music" "/opt/usr/media/Music"
cls
@ECHO OFF
ECHO %title%
ECHO.
ECHO - Open Music App swipe from bottom
ECHO - Select Gear Music Manager and exit
ECHO - If still not shown reapply procedure
ECHO. 
pause
rmdir /S /Q "Music"
cls
exit