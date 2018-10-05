@ECHO OFF

echo.
echo    Synergy Core 2 (BETA) - built from source
echo.
echo Starting in server mode...
echo.

SET /P server="Enter Server IP: "
.\synergy-core.exe --client %server%

REM TODO: try reaching the server a couple times and then fall back and prompt
REM user to enter a new IP if a connection cannot be made.

REM insert a pause so that the console doesn't immediately close if there's an error
PAUSE