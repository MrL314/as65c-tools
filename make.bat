@echo off


call :BUILD_MAIN as65c
call :BUILD_MAIN link
call :BUILD_MAIN hex2bin
call :BUILD_MAIN rel_reader
call :BUILD_MAIN addROMdata


GOTO :exit





:BUILD_MAIN
call :BUILD_PY %1\%1
call :move_file dist\%1.exe %1.exe
rem call :copy_file %1\%1.exe %1.exe
call :del_dir dist
call :del_dir %1\__pycache__
call :del_dir build
call :del_file %1.spec

exit /b


:BUILD_PY
pyinstaller %1.py --onefile --noconfirm
exit /b


:move_file
call :copy_file %1 %2
call :del_file %1
exit /b


:copy_file
copy %1 %2 >NUL
exit /b


:del_file
if exist %1 (
	del %1 /f /q
) 
exit /b


:del_dir
rmdir /s /q %1
exit /b


:exit
pause
