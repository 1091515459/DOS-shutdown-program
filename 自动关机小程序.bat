@echo *** 1: 10M
@echo *** 2: 30M
@echo *** 3: 1H
@echo *** 4: 2H 
@echo *** 5: 4H
@echo *** 0:cancel

set /p w=
if "%w%"=="0" goto guanji0
if "%w%"=="1" goto guanji1
if "%w%"=="2" goto guanji2
if "%w%"=="3" goto guanji3
if "%w%"=="4" goto guanji4
if "%w%"=="5" goto guanji5
goto setdown
:guanji0
shutdown -a
goto qc
:guanji1
shutdown -s -t 600
goto qc
:guanji2
shutdown -s -t 1800
goto qc
:guanji3
shutdown -s -t 3600
goto qc
:guanji4
shutdown -s -t 7200
goto qc
:guanji5
shutdown -s -t 14400
goto qc
