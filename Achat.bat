@echo off
Prompt Achat
goto :menu

:menu
cls
echo                                                                             .
echo   1- connect to Achat public Relay
echo   2- connect to Public Achat room
echo   3- create Achat private relay
echo                                                                             .
set /p a=Select an option [%user%]: 
if "%a%"=="1" goto :relay
if "%a%"=="2" goto :chat
if "%a%"=="3" goto :priv
echo [!] Invalid Choice. Please try again... [!]
pause
goto :menu

:relay
start Achat.bat
cd C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
curl -o Relay.pyw https://raw.githubusercontent.com/imadeit445/AChat/refs/heads/main/Relay.pyw
ping 1.1.1.1 -n 2
start Relay.pyw
exit

:chat
curl -o AChat.pyw https://raw.githubusercontent.com/imadeit445/AChat/refs/heads/main/AChat.pyw
ping 1.1.1.1 -n 2
start AChat.pyw
start Achat.bat
exit

:priv
start Achat.bat
curl -o AChat-private-Relay.py https://raw.githubusercontent.com/imadeit445/AChat/refs/heads/main/AChat-private-Relay.py
ping 1.1.1.1 -n 2
cls
python3 AChat-private-Relay.py
pause
exit