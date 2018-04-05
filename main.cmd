@echo off
echo **********************************
echo *********** PRINCIPAL ************
echo **********************************
echo.
set /p folderName=NOME DA PASTA: 
echo.
start /wait cmd /c "bin\start.cmd" %folderName%
echo npm init completado...
echo.
echo **********************************
echo INSTALL DEPENDENCIES
start /wait cmd /c "bin\dependencies.cmd" %folderName%
echo.
echo instalado dependencias...
echo.
echo **********************************
echo COPANDO ARQUIVOS DE CONFIGURACAO
echo.
copy config_files\server.js ..\%folderName%
copy config_files\database.js ..\%folderName%\config
copy config_files\express.js ..\%folderName%\config
copy config_files\passport.js ..\%folderName%\config
copy init_files\index.ejs ..\%folderName%\app\views
copy init_files\404.ejs ..\%folderName%\app\views
copy init_files\index.js ..\%folderName%\app\routes
echo.
echo ************** done **************
pause