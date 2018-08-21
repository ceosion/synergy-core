@ECHO OFF

echo.
echo    Synergy Core 2 (BETA) - built from source
echo.
echo Starting in server mode...
echo.

REM TODO allow config to be specified as script argument and skip the next part
REM List the available conf files and prompt for selection
REM TODO

REM Provide current IP addresses of *this* server
REM nslookup $(`hostname`)
set ip_address_string="IPv4 Address"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo Your IP Address is: %%f
echo.

REM Start Synergy in server mode
echo Use [CTRL] + C to terminate program...
echo.
.\synergy-core.exe --server ^
    --address 0.0.0.0 ^
    --config server-asus-laptop.conf ^
    --no-daemon
