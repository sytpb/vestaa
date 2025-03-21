@echo off
setlocal

set fileNum=0

for %%f in (*.webp) do (
    call :renameFile "%%f"
)
goto :eof

:renameFile
ren %1 "%fileNum%.webp"
if errorlevel 1 (
    echo Error renaming %1 to %fileNum%.webp
) else (
    echo Renamed %1 to %fileNum%.webp
)
set /a fileNum+=1
goto :eof