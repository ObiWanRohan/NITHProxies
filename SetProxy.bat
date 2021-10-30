@echo off
setlocal

@REM Configure proxy server here
set PROXY_SERVER=172.16.24.2:3128


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d %PROXY_SERVER% /f
netsh winhttp set proxy %PROXY_SERVER%

endlocal