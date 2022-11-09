@echo off
setlocal enabledelayedexpansion
goto :main
:youtube
call :query1 YouTube q search
goto :eof
:Bing
call :query1 Bing q search
goto :eof
:ecosia
call :query1 Ecosia q search
goto :eof
:yahoo
call :query1 Yahoo p search search.
goto :eof
:yandex
call :query1 Yandex text search
goto :eof
:aol
call :query1 AOL q search search.
goto :eof
:excite
call :query1 Excite q serp results.
goto :eof
:ask
call :query1 Ask q web 
goto :eof
:google
call :query1 Google q search
goto :eof
:ddg
call :query1 DuckDuckGo q
goto :eof

:main
cls
echo 				   	      Choose the search engine............                           
echo   			Yo[U]tube   [G]oogle   [D]uckduckgo/Yippy   [B]ing    [S]tartpage
echo 		         [A]sk  [Y]ahoo  [E]cosia   Exc[I]te  Ya[N]dex   A[O]L  O[T]her 
echo                                                              E[X]it
echo.
echo.
echo.
echo.
set /p e="Search in:  "
If /i "%e%"=="x" goto :exit
If /i "%e%"=="exit" goto :exit
If /i "%e%"=="e" goto :ecosia
If /i "%e%"=="ecosia" goto :ecosia
If /i "%e%"=="u" goto :youtube
If /i "%e%"=="YoutubE" goto :youtube
If /i "%e%"=="g" goto :google
If /i "%e%"=="googlE" goto :google
If /i "%e%"=="B" goto :Bing
If /i "%e%"=="bing" goto :Bing
If /i "%e%"=="a" goto :ask
If /i "%e%"=="ask" goto :ask
If /i "%e%"=="y" goto :yahoo
If /i "%e%"=="yahoo" goto :yahoo
If /i "%e%"=="n" goto :yandex
If /i "%e%"=="yandex" goto :yandex
If /i "%e%"=="o" goto :aol
If /i "%e%"=="aol" goto :aol
If /i "%e%"=="i" goto :excite
If /i "%e%"=="excite" goto :excite
If /i "%e%"=="t" goto :other
If /i "%e%"=="other" goto :other
If /i "%e%"=="yippy" goto :ddg
If /i "%e%"=="d" goto :ddg
If /i "%e%"=="duckduckgo" goto :ddg else (
call :IncorrectInput 
goto :main
)

:other
set /p url="Enter the URL&extension of the website that you want to visit:  "
microsoftedge https://%url%
goto:eof
 
:IncorrectInput
cls
echo                                                Sorry, %e% is not the valid engine.
echo 						      Please try again!!!!..... 	
powershell start-sleep -seconds 1
goto :eof

:query1
set /p q="What would you like to search on %~1:  "
cls
microsoftedge https://%~4%~1.com/%~3?%~2=%q: =+%
cls
exit /b
goto :eof
endlocal


:exit
cls
exit /b
