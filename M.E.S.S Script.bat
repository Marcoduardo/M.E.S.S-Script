::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Querido Programador...
:: Esse Script foi desenvolvido por Marcos Eduardo RE: 10703. (USF - Unidade Swift)
:: Criado dia 12/07/2022. qualquer alteracao feita, deve ser comentada com seu Nome, data e RE:
:: Caso encontre algum erro no script, fique a vontade para comenta-lo no final do Script.
:: Email: marcos.esantana@usf.edu.br
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

net session >nul 2>&1 || (powershell start -verb runas '"%~0"' &exit /b)
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"   

Title USF - UNIVERSIDADE SÃO FRANCISCO ^| Ferramenta Para Auxiliar no Suporte T.I.

chcp 65001

:MenuP

color f4

cls

mode con cols=83 lines=27

echo  Para o funcionamento, a pasta ADcenter, deve estar em sua area de trabalho!
echo  -------------------------------------------------------------------------------
echo.
echo.  ******Bem Vindos ao ADcenter V.2.1.0 / Welcome to ADcenter version v.2.1.0****
echo.
echo  -------------------------------------------------------------------------------
echo   Menu Principal  ^| PC: %Computername% ^|  %username%  ^|  %DATE% %TIME% 
echo  -------------------------------------------------------------------------------
echo.
echo.
echo  -------------------------------------------------------------------------------   
echo.
echo          1. OPCOES DE DOMINÍO.             2. OPÇÕES DE IMPRESSORAS.
echo.
echo  -------------------------------------------------------------------------------
echo.
echo          3. SOBRE O ADCENTER.              4. BACKUP DE USUÁRIO.
echo.
echo  -------------------------------------------------------------------------------
echo.
echo.         5. SISTEMA CONTROLE DE ESTOQUE.   6. FERRAMENTAS DE MANUTENÇÃO
echo.
echo  -------------------------------------------------------------------------------
echo.
echo.         7. SAIDA DO PROGRAMA
echo.
echo  -------------------------------------------------------------------------------
echo.

CHOICE /C 123456 /M "Escolha uma Opção:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 7 exit
IF ERRORLEVEL 6 GOTO manutencao
IF ERRORLEVEL 5 GOTO estoque
IF ERRORLEVEL 4 GOTO backup
IF ERRORLEVEL 3 GOTO ajuda
IF ERRORLEVEL 2 GOTO impressora
IF ERRORLEVEL 1 GOTO domin

:domin

cls
color f0

call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s01.bat"

:impressora

cls
color f0

call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s02.bat"

:ajuda

cls
color f0

call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s03.bat"

:backup

cls
color f0

call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s04.bat"

:manutencao

cls
color f0

call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\m.e.s.s05.bat"

goto :MenuP

:estoque

cls
color f0

call "C:\Users\%username%\Desktop\M.E.S.S Script\Complementos\Controle de Estoque USF\Central de Estoque.bat"

goto :MenuP

:: Descreva os Erros/sugestoes abaixo, caso encontre, e me encaminha por email.. 

:: inspira?oes
:: @ricardo_br (https://www.clubedohardware.com.br/profile/327720-ricardo_br/)
