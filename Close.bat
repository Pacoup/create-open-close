@echo off
REM Create Open Close Utility 2.1
REM 2012-05-17
REM (c) 2012 Canadian Institutes of Health Research
REM Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
REM The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

ECHO Enter folder ID
SET /P FID=

IF EXIST "\\Server\Workspace\Working\%FID%" (
	ECHO.
	XCOPY /S /E /I /Q "\\Server\Workspace\Working\%FID%" "\\Server\Workspace\Closed\%FID%"
	RMDIR /S /Q "\\Server\Workspace\Working\%FID%"
	ECHO.
	ECHO ID successfully closed
	ECHO.
	PAUSE
) ELSE IF EXIST "\\Server\Workspace\Closed\%FID%" (
	ECHO.
	ECHO ID already closed
	ECHO.
	PAUSE
) ELSE (
	ECHO.
	ECHO ID folder not found
	ECHO.
	PAUSE
)
