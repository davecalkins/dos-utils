@echo off
rem *** 
rem *** does a mass rename of files recursively, changing their extensions.
rem *** set oldExt and newExt then put this file in the top directory
rem *** where the files to be renamed live.  note that the for loop
rem *** is a bit redundant; the commands in the for loop are actually
rem *** executed once for each file not once for each directory.
rem *** tried using alternate syntax for the for loop but it only went
rem *** 1 level deep and then stopped.  so when you run this you will
rem *** get a bunch of "The system cannot find the file specified." errors
rem *** but it seems to work ok.
rem *** 
set oldExt=*.a
set newExt=*.b
pushd .
for /r %%x in (*) do (
    cd %%~px
	ren %oldExt% %newExt%
)
popd
echo DONE
pause

