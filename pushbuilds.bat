set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

makelove

butler push builds/lovejs/ld50practice-lovejs.zip grgkemp/LD50PRACTICE:browser
butler push builds/win64/ld50practice-win64.zip grgkemp/LD50PRACTICE:win64 
butler push builds/macos/ld50practice-macos.zip grgkemp/LD50PRACTICE:macos