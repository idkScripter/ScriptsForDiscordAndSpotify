echo off && title Debloat Script && mode con: cols=100 lines=25 && color F4 && cls
echo Discord Debloat Script by Sohan Prasanna (idk...#2236) && timeout /t 4 >nul && cls
:main
DEL "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\Discord\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\SquirrelSetup.log" /F /Q
rd /s /q "%HOMEPATH%\appdata\Local\discord\Packages"
@echo
@echo
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_Spellcheck"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_overlay"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_krisp"
cls && echo Discord Has Been Debloated && timeout /t 2 >nul
cls && echo Would you like to reduce RAM usage? (Type Yes or No) && set /p ansr=
if /i "%ansr%" == "yes" cls && call :reg
) else (
	goto :exit
)
:reg
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Discord.exe" /v "UseLargePages" /t REG_DWORD /d 1 /f >nul 2>&1
:exit
cls && echo Thank You For Using My Script && timeout /t 3 >nul && exit