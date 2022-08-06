@echo off
chcp 65001
Title M.E.S.S SCRIPT  ^| MENU ^| Bem vindo/Welcome...
setlocal enabledelayedexpansion
mode con cols=81 lines=20 
set no=1
:: properties
set max=7
set defcolor=f4
set sel=1
set selcolor=8f
call :reset
call :setmenu
:refresh
:: redraw window
DCls 0
call :recolor
call :title
call :menu
call :below
set sel2=!sel!
DKey
if "%errorlevel%"=="13" call :action&goto refresh
if "%errorlevel%"=="40" set /a sel+=1&goto refresh
if "%errorlevel%"=="38" set /a sel-=1&goto refresh
goto refresh
:reset
:: reset variable
for /l %%i in (1 1 !max!) do set color%%i=!defcolor!
for /l %%i in (1 1 !max!) do set menu%%i=undefined
exit /b
:menu
:: display menu
color !defcolor!
for /l %%i in (1 1 !max!) do (
DCls x1
set /p ="!left!"<nul
DColor !color%%i!
set /p ="!menu%%i!"<nul
DColor !defcolor!
echo.!right!
)
exit /b
:title
echo  -------------------------------------------------------------------------------
echo.
echo.  ***********Bem Vindos ao M.E.S.S Script / Welcome to M.E.S.S Script**********
echo.
echo  -------------------------------------------------------------------------------
echo   Menu Principal  ^| PC: %Computername% ^|  %username%  ^|  %DATE% %TIME% 
echo  -------------------------------------------------------------------------------
echo.
echo.
echo  ------------------------------------------------------------------------------- 
exit /b
:below
echo.
echo. Escolha uma das opções acima:.
exit /b
:recolor
:: reset color
if !sel! lss 1 set sel=!max!
if !sel! gtr !max! set sel=1
set color!sel!=!selcolor!
if not !sel!==!sel2! (
set color!sel2!=!defcolor!
)
exit /b
:setmenu
:: set menu caption
set menu1=OPÇÕES DE DOMINÍO
set menu2=OPÇÕES DE IMPRESSORAS
set menu3=SOBRE O M.E.S.S Script
set menu4=BACKUP DE USUÁRIO
set menu5=FERRAMENTAS DE MANUTENÇÃO
set menu6=SAIDA DO PROGRAMA
set menu7=ALTERAR COR DO MENU
set left={ 
set right= }
exit /b
:action
IF /I "!sel!"=="1" call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s01.bat"
IF /I "!sel!"=="2" call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s02.bat"
IF /I "!sel!"=="3" call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s03.bat"
IF /I "!sel!"=="4" call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s04.bat"
IF /I "!sel!"=="5" call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s05.bat"
IF /I "!sel!"=="6" exit
IF /I "!sel!"=="7" (
if !no!==1 (
set selcolor=3f
set defcolor=70
)
if !no!==2 (
set selcolor=0b
set defcolor=0f
)
if !no!==3 (
set selcolor=8f
set defcolor=0f
set no=0
)
call :reset
call :setmenu
set /a no+=1
) else (
cls
echo.
echo. Você escolheu a opção !sel!, Pressione ENTER para voltar
echo.
echo. [!menu%sel%!]
pause>nul
)
exit /b