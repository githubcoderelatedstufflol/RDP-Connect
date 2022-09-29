reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=yes
curl -O ngrok.zip https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip
tar -xf ngrok.zip
cd ngrok
set /P id=Enter ngrok auth token: 
ngrok.exe config add-authtoken %id%
ngrok.exe tcp 3389
