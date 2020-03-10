::---------------Управленеие git через консоль---------------
::Переход в корневой каталог
@echo off
:: cd C:/Users/IDA_102/Desktop/git_cmd
cd C:/Users/user/Desktop/git_cmd
@pause
::Имена команд
cls
@echo 1 - main job
@echo 2 - initialization
:4
set /p int="int: "
if %int% == 1 (
goto 1)
if %int% == 2 (
cls
git init
git fetch && git checkout master rem Передаёт права мастера локальному репозиторию на другой машине
goto 1) 
:: Статус каталога
@git status
@pause
:1
::Имена команд
@echo 1 - status
@echo 2 - add
@echo 3 - coment
@echo 4 - server address
@echo 5 - sending to the server
@echo 0 - exit
::Ввод переменной
@echo off
set /p int="int: "
::Вывод переменной
echo "%int%"
::Действие
if %int% == 1 (
cls
git status)
if %int% == 2 (
cls
git add .)
if %int% == 4 (
cls
::Здесь пишем адрес репозитория
git remote add origin https://IDA_102@bitbucket.org/IDA_102/git_test.git
if %int% == 5 (
cls
git push -u origin master)
if %int% == 0 (
exit)
if %int% == 3 (
cls
set /p coment="coment:"
goto 2)
::TIMEOUT /T 1 /NOBREAK
:3
goto 1

:2
::call echo %%coment%% Второй вариант для вызова без goto внутри if
echo %coment%
git commit -m "%coment%"
goto 3

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
REM echo off
REM cls
REM set cnt=1
REM set old=0
REM echo %cnt% %old%
REM if %cnt% == 0 echo %cnt% equal %old%
REM set /a cnt+=1
REM if %cnt% geq 0 echo %cnt% great %old%
REM pause
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
REM @echo off
REM :: Ввод данных:
REM set /p Data="Data: "
REM :: "Идентификация" данных:
REM echo "%Data%"
REM pause>nul