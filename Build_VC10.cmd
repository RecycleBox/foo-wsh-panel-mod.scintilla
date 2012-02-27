@echo off
if not exist "%VS100COMNTOOLS%vsvars32.bat" (
    echo Cannot found Visual Studio 2010 Toolset.
    echo exiting...
    goto :end
)

setlocal

call "%VS100COMNTOOLS%vsvars32.bat"
cd win32
nmake -f scintilla.mak DEBUG=1
nmake -f scintilla.mak
cd ..

endlocal

:end
