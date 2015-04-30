@echo off
set current = "%CD%"
for /r "%CD%" %%f in (.) do (
copy "Analyzer.exe" "%%~ff" > nul
)

@echo off
cls
for /r "%CD%" %%f in (.) do (
cd %%~ff
analyzer *.cpp > %%~ff.txt
)
cd %~dp0
for /r "%CD%" %%f in (.) do (
cd %%~ff
move *.txt %~dp0 
)
cd %~dp0 
for /r "%CD%" %%f in (.) do (
cd %%~ff
del analyzer.exe

)
pause
cd %~dp0 
setlocal
FOR %%F IN (*.txt) DO (
IF %%~zF LSS 1000 DEL %%F
)
 