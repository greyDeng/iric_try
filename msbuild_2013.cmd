@echo off
setlocal enableextensions
pushd .
call "C:\Qt\5.5\msvc2013_64\bin\qtenv2.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64
popd
call versions.cmd
set GENERATOR="Visual Studio 12 2013 Win64"
set SGEN=vs2013-x64
msbuild /nologo /target:all iricdev.proj
endlocal
