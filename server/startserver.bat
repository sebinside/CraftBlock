REM https://github.com/AllTheMods/alltheservers
REM
REM The MIT License (MIT)
REM
REM Copyright (c) 2018 BloodWorkXGaming
REM
REM Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
REM
REM The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
REM
REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


@ECHO OFF
SETLOCAL

:BEGIN
CLS
COLOR 3F >nul 2>&1
SET MC_SYS32=%SYSTEMROOT%\SYSTEM32
REM Make batch directory the same as the directory it's being called from
REM For example, if "run as admin" the batch starting dir could be system32
CD "%~dp0" >nul 2>&1

:CHECK
REM Check if serverstarter JAR is already downloaded
IF NOT EXIST "%cd%\serverstarter-@@serverstarter-libVersion@@.jar" (
	ECHO serverstarter binary not found, downloading serverstarter...
	%SYSTEMROOT%\SYSTEM32\bitsadmin.exe /rawreturn /nowrap /transfer starter /dynamic /download /priority foreground https://github.com/Yoosk/ServerStarter/releases/download/v@@serverstarter-libVersion@@/serverstarter-@@serverstarter-libVersion@@.jar "%cd%\serverstarter-@@serverstarter-libVersion@@.jar"
   GOTO MAIN
) ELSE (
   GOTO MAIN
)

:MAIN
java -jar serverstarter-@@serverstarter-libVersion@@.jar
GOTO EOF

:EOF
pause