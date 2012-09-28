@echo off
rem *** 
rem *** strips the specified # chars from the end of each filename
rem *** recursively processing all files matching a specified pattern
rem *** starting from where this is run.  the below will strip
rem *** the last 4 chars from all files matching *.txt recursively
rem *** from the directory where this is run.
rem ***
setlocal enabledelayedexpansion
set filePattern=*.txt
set numCharsToStrip=4
for /r %%x in (%filePattern%) do (
   set file=%%x
   for /l %%y in (1,1,%numCharsToStrip%) do (
      set file=!file:~0,-1!
   )
   move "%%x" "!file!"
)
echo DONE
pause

