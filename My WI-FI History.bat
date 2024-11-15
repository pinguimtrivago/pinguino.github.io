@echo off          
title My WI-FI History v1.2
color A
echo ==========================================================
echo -
echo .88b  d88. db    db   
echo 88'YbdP`88 `8b  d8'      
echo 88  88  88  `8bd8'        
echo 88  88  88    88            
echo 88  88  88    88            
echo YP  YP  YP    YP
echo db   d8b   db d888888b        d88888b d888888b 
echo 88   I8I   88   `88'          88'       `88'   
echo 88   I8I   88    88           88ooo      88    
echo Y8   I8I   88    88    C8888D 88~~~      88    
echo `8b d8'8b d8'   .88.          88        .88.   
echo  `8b8' `8d8'  Y888888P        YP      Y888888P
echo db   db d888888b .d8888. d888888b  .d88b.  d8888b. db    db 
echo 88   88   `88'   88'  YP `~~88~~' .8P  Y8. 88  `8D `8b  d8' 
echo 88ooo88    88    `8bo.      88    88    88 88oobY'  `8bd8'  
echo 88~~~88    88      `Y8b.    88    88    88 88`8b      88    
echo 88   88   .88.   db   8D    88    `8b  d8' 88 `88.    88    
echo YP   YP Y888888P `8888Y'    YP     `Y88P'  88   YD    YP
echo -    
echo === Made by pinguimtrivago :D ============================

for /f "tokens=2 delims=:" %%a in ('netsh wlan show profile') do (
        set "ssid=%%~a"
        call :getpwd "%%ssid:~1%%"
)
pause
:getpwd
set "ssid=%*"
for /f "tokens=2 delims=:" %%i in ('netsh wlan show profile name^="%ssid:"=%" key^=clear ^|findstr /C:"Key Content"') do (
        echo ----- WI-FI Name: %ssid% Password: %%i -----
)