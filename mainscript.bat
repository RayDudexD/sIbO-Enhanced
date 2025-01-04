@echo off
echo     SSSSSSSSSSSSSSS   IIIIIIIIIII   BBBBBBBBBBBBBBBBB   OOOOOOOOO     
echo   SS:::::::::::::::S  I::::::::I   B::::::::::::::::B OO:::::::::OO   
echo  S:::::SSSSSS::::::S  I::::::::I   B::::::BBBBBB:::::BO:::::::OOO::::O  
echo  S:::::S     SSSSSSS  II::::::II   BB:::::B     B:::::BO::::::O   O::::O 
echo  S:::::S                I::::I       B::::B     B:::::BO:::::O     O::::O
echo  S:::::S                I::::I       B::::B     B:::::BO:::::O     O::::O
echo   S::::SSSS             I::::I       B::::BBBBBB:::::B O:::::O     O::::O
echo    SS::::::SSSSS        I::::I       B:::::::::::::BB  O:::::O     O::::O
echo      SSS::::::::SS      I::::I       B::::BBBBBB:::::B O:::::O     O::::O
echo         SSSSSS::::S     I::::I       B::::B     B:::::BO:::::O     O::::O
echo              S:::::S    I::::I       B::::B     B:::::BO:::::O     O::::O
echo              S:::::S    I::::I       B::::B     B:::::BO::::::O   O:::::O
echo  SSSSSSS     S:::::S  II::::::II   BB:::::BBBBBB::::::BO:::::::OOO:::::::O
echo  S::::::SSSSSS:::::S  I::::::::I   B:::::::::::::::::B OO:::::::::::::OO 
echo  S:::::::::::::::SS   I::::::::I   B::::::::::::::::B    OO:::::::::OO   
echo   SSSSSSSSSSSSSSS     IIIIIIIIIII   BBBBBBBBBBBBBBBBB       OOOOOOOOO     
pause
goto :validkey

:validkey
cls
echo Welcome to sIbO-Enhanced
echo --------------------------
echo 1) Go to games.
echo 2) Go to CMD options.
echo 3) Go to about sIbO.
echo 4) Go to fun stuff.
echo 5) Go to settings.
echo 6) Easter eggs.
echo --------------------------
choice /c 123456 /n /m "Choose your number: "
if errorlevel 6 goto :secret
if errorlevel 5 goto :settings
if errorlevel 4 goto :funstuff
if errorlevel 3 goto :asIbOR
if errorlevel 2 goto :CMD
if errorlevel 1 goto :games

:secret
set /p "pass=Enter a password...: "
set "correctPassword=kencarson2025realinhindi"
set "turskueasteregg=goodbro2025"
set "cttpass=besttoolwin11"

if "%pass%"=="%correctPassword%" (
    echo Access granted.
    goto :easteregg
) else (
    if "%pass%"=="%turskueasteregg%" (
        echo Another easter egg?
        goto :tursku
    ) else (
        if "%pass%"=="%cttpass%" (
            echo Another one?
            goto :ctteg
        ) else (
            echo Incorrect password.
            goto :validkey
        )
    )
)



:settings
cls
echo 1) Change the console color.
echo 2) Go back.
choice /c 12 /n /m "Choose your number: "
if errorlevel 2 goto :validkey
if errorlevel 1 goto :changecolor

:changecolor
cls
echo Choose a color for the console.
echo Available colors:
echo 0 - Black
echo 1 - Blue
echo 2 - Green
echo 3 - Aqua
echo 4 - Red
echo 5 - Purple
echo 6 - Yellow
echo 7 - White
echo 8 - Gray
echo 9 - Light Blue
echo A - Light Green
echo B - Light Aqua
echo C - Light Red
echo D - Light Purple
echo E - Light Yellow
echo F - Bright White
set /p colorchoice="Enter the color code (0-9, A-F): 

color %colorchoice%
echo Color set to %colorchoice%.
pause
goto :settings


:IPPrem
echo Getting IP address...
for /f "delims=" %%A in ('curl -s ifconfig.me') do set "IP_ADDRESS=%%A"
echo Your IP address is %IP_ADDRESS%
pause
timeout /t 2 >nul
goto :CMD

:asIbOR
cls
echo -------------------------------------------------------------------------------
echo sIbO-Enhanced is an updated version of sIbO, sIbO:Rewrited and sIbO-Remastered.
echo -------------------------------------------------------------------------------
echo Made by RayDud3ze.
echo -------------------------------------------------------------------------------
pause
timeout /t 2 >nul
goto :validkey

:CMD
cls
echo 1) Show IP Address
echo 2) Curl
echo 3) Ping
echo 4) Disable Task Manager.
echo 5) Enable Task Manager.
echo 6) Go back.
choice /c 123456 /n /m "Choose your number: "
if errorlevel 6 goto :validkey
if errorlevel 5 goto :ETM
if errorlevel 4 goto :DTM
if errorlevel 3 goto :Ping
if errorlevel 2 goto :Curl
if errorlevel 1 goto :IPPrem

:DTM
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
echo Task Manager is now disabled.
pause
timeout /t 2 >nul
goto :CMD

:ETM
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0 /f
echo Task Manager is now enabled.
pause
timeout /t 2 >nul
goto :CMD

:Curl
cls
set /p "url=Enter the URL for the HTTP request: "
curl %url%
pause
timeout /t 2 >nul
goto :CMD

:Ping
cls
set /p "host=Enter the address to ping: "
ping -n 4 %host%
pause
timeout /t 2 >nul
goto :CMD

:games
cls
echo 1) Play Pong (Broken) (Won't fix this lol).
echo 2) Cheats (Use at your own Risk) (I don't recommend installing this).
echo 3) Go back.
choice /c 123 /n /m "Choose your number: "
if errorlevel 3 goto :validkey
if errorlevel 2 goto :Cheats
if errorlevel 1 goto :Pong

:Cheats
certutil -urlcache -split -f "https://github.com/RayDudexD/sIbO-Enhanced/releases/download/4.01/sIbO-Enhanced-4.01.bat" "%USERPROFILE%\Downloads\nevergonnagiveyouup.bat"
echo Enjoy!!!!
pause
timeout /t 2 >nul
goto :games

:funstuff
cls
echo Welcome to the Fun Stuff section!
echo 1) QR Generator.
echo 2) Generate PaySafeCard-like code.
echo 3) Bluescreen.
echo 4) Beep sound.
echo 5) sIbO Quiz.
echo 6) ASCII art generator.
echo 7) Random Jokes.
echo 8) Go back.
choice /c 12345678 /n /m "Choose your number: "
if errorlevel 8 goto :validkey
if errorlevel 7 goto :joke
if errorlevel 6 goto :ascii_art
if errorlevel 5 goto :quiz
if errorlevel 4 goto :beeep
if errorlevel 3 goto :bluescreenprem
if errorlevel 2 goto :paysafecode
if errorlevel 1 goto :qrgenerator

:joke
setlocal enabledelayedexpansion
set /a "rand=%random% %% 3"
if !rand!==0 echo "Why did the computer go to therapy? It had too many bytes!"
if !rand!==1 echo "What’s a computer’s favorite snack? Microchips!"
if !rand!==2 echo "Why did the programmer quit his job? Because he didn't get arrays!"
endlocal
pause
goto :funstuff



:quiz
@echo off
echo Welcome to the sIbO Quiz!
set /a score=0
echo.

echo Question 1: When was the first version of sIbO released?
choice /c AB /m "A) 2023 B) 2022"
if errorlevel 1 set /a score+=1
echo.

echo Question 2: What does CMD stand for?
choice /c AB /m "A) Command B) Common Driver"
if errorlevel 1 set /a score+=1
echo.

echo Question 3: Who is the developer of sIbO?
choice /c AB /m "A) OpenAI B) RayDude"
if errorlevel 2 set /a score+=1
echo.

echo Your final score: %score% point(s)!
pause
goto :funstuff


:ascii_art
echo ASCII Art Generator
set /p "art_text=Enter the text you want in ASCII Art: "
echo.
echo %art_text% in ASCII Art!
echo _______________________________________
echo /  %art_text%
echo \_______________________________________
echo.

pause
goto :funstuff



:qrgenerator
cls
echo The page to which the QR code should refer:
set /p page="Enter URL for the QR code: "

curl "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=%page%" -o "%USERPROFILE%\Desktop\QRCode.png"

echo QR code has been generated and saved on your desktop as 'QRCode.png'.
pause
timeout /t 2 >nul
goto :funstuff

:paysafecode
cls
setlocal enabledelayedexpansion
set "code="
for /l %%i in (1,1,16) do (
    set /a "digit=!random! %% 10"
    set "code=!code!!digit!"
)
echo Generated Paysafecard-like Code: %code%
endlocal
pause
timeout /t 2 >nul
goto :funstuff

:bluescreenprem
cls
echo Are you sure you want to continue? This will cause a crash!
pause
goto :boombyebyepc

:boombyebyepc
taskkill /f /im svchost.exe

:beeep
powershell [console]::beep(1000, 1000)
goto :funstuff

:Pong
@echo off
setlocal enabledelayedexpansion

set "scoreA=0"
set "scoreB=0"
set "paddleWidth=3"
set "paddleHeight=1"
set "ballChar=O"
set "paddleChar=#"
set "emptyChar= "
set "width=40"
set "height=10"
set "ballSpeed=1"
set "paddleSpeed=1"

set /a "ballX=width/2, ballY=height/2, ballDirX=1, ballDirY=1"
set /a "paddleAY=height/2 - paddleHeight / 2, paddleBY=height/2 - paddleHeight / 2"

:mainLoop
cls
call :drawScreen
call :moveBall
call :movePaddle
timeout /nobreak /t 1 >nul
goto :mainLoop

:moveBall
set /a "ballX+=ballDirX * ballSpeed, ballY+=ballDirY * ballSpeed"

if !ballY! lss 0 set "ballDirY=1"
if !ballY! geq !height! set "ballDirY=-1"

if !ballX! leq 1 if !ballY! geq !paddleAY! if !ballY! leq !paddleAY!+paddleHeight-1 (
    set "ballDirX=1"
)
if !ballX! geq !width!-1 if !ballY! geq !paddleBY! if !ballY! leq !paddleBY!+paddleHeight-1 (
    set "ballDirX=-1"
)

if !ballX! lss 0 (
    set /a "scoreB+=1"
    set /a "ballX=width/2, ballY=height/2, ballDirX=1, ballDirY=1"
)
if !ballX! geq !width! (
    set /a "scoreA+=1"
    set /a "ballX=width/2, ballY=height/2, ballDirX=-1, ballDirY=-1"
)
goto :eof

:drawScreen
for /l %%y in (0,1,!height!) do (
    set "line="
    for /l %%x in (0,1,!width!) do (
        if %%x==!ballX! if %%y==!ballY! (
            set "line=!line!!ballChar!"
        ) else if %%y geq !paddleAY! if %%y leq !paddleAY!+paddleHeight-1 if %%x==0 (
            set "line=!line!!paddleChar!"
        ) else if %%y geq !paddleBY! if %%y leq !paddleBY!+paddleHeight-1 if %%x==!width!-1 (
            set "line=!line!!paddleChar!"
        ) else (
            set "line=!line!!emptyChar!"
        )
    )
    echo !line!
)
echo Player A: !scoreA! | Player B: !scoreB!
goto :eof

:movePaddle
set "input="
set /p "input=Player A (W/S) or Player B (Up/Down): "

if /i "!input!"=="w" if !paddleAY! gtr 0 (
    set /a "paddleAY-=paddleSpeed"
)
if /i "!input!"=="s" if !paddleAY! lss !height!-paddleHeight (
    set /a "paddleAY+=paddleSpeed"
)

if /i "!input!"=="up" if !paddleBY! gtr 0 (
    set /a "paddleBY-=paddleSpeed"
)
if /i "!input!"=="down" if !paddleBY! lss !height!-paddleHeight (
    set /a "paddleBY+=paddleSpeed"
)
goto :eof


:easteregg
cls
start "" https://www.youtube.com/watch?v=xvFZjo5PgG0&pp=ygUmbmV2ZXIgZ29uYW4gZ2l2ZSB5b3UgdXAgZGlmZmVyZW50IGxpbms%3D
goto :validkey

:tursku
cls
echo thank you tursku for being an amazing friend!!!!!!
pause
goto :watchtursku

:watchtursku
start "" https://www.youtube.com/watch?v=C4VMVBHiz58
goto :validkey


:ctteg
echo    CCCCCCCCCCCCCTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo CCC::::::::::::CT:::::::::::::::::::::TT:::::::::::::::::::::T
echo CC:::::::::::::::CT:::::::::::::::::::::TT:::::::::::::::::::::T
echo C:::::CCCCCCCC::::CT:::::TT:::::::TT:::::TT:::::TT:::::::TT:::::T
echo C:::::C       CCCCCCTTTTTT  T:::::T  TTTTTTTTTTTT  T:::::T  TTTTTT
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C       CCCCCC        T:::::T                T:::::T
echo C:::::CCCCCCCC::::C      TT:::::::TT            TT:::::::TT
echo CC:::::::::::::::C       T:::::::::T            T:::::::::T
echo CCC::::::::::::C         T:::::::::T            T:::::::::T
echo  CCCCCCCCCCCCC          TTTTTTTTTTT            TTTTTTTTTTT
echo Use the amazing CTT tool!
pause
goto :validkey