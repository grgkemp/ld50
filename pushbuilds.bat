set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

git add .
git commit -m "build"
git push

makelove

butler push builds/lovejs/ld50-lovejs.zip grgkemp/malbork:browser
butler push builds/win64/ld50-win64.zip grgkemp/malbork:win64 
butler push builds/macos/ld50-macos.zip grgkemp/malbork:macos