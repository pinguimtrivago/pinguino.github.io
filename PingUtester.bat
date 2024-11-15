@echo off 
color 0B
title PingUtester
echo ===========================================================================================
echo -
echo 8888888b.  d8b                   888     888 888                     888                    
echo 888   Y88b Y8P                   888     888 888                     888                    
echo 888    888                       888     888 888                     888                    
echo 888   d88P 888 88888b.   .d88b.  888     888 888888 .d88b.  .d8888b  888888 .d88b.  888d888 
echo 8888888P"  888 888 "88b d88P"88b 888     888 888   d8P  Y8b 88K      888   d8P  Y8b 888P"   
echo 888        888 888  888 888  888 888     888 888   88888888 "Y8888b. 888   88888888 888     
echo 888        888 888  888 Y88b 888 Y88b. .d88P Y88b. Y8b.          X88 Y88b. Y8b.     888     
echo 888        888 888  888  "Y88888  "Y88888P"   "Y888 "Y8888   88888P'  "Y888 "Y8888  888     
echo                              888                                                            
echo                         Y8b d88P                                                            
echo                          "Y88P" 
echo -
echo =========================================================================================== 
echo Just a ping tester. Simple as that.                                                                                                                     
set /p IP= Enter IP Address/Domain:
:top
PING  -n 1 %IP% | FIND "TTL="
ping -n 2 -l 10 127.0.0.1 >nul
GoTo top