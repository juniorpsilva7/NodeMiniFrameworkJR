@echo off
echo **********************************
echo ******* APP %folderName% *********
echo **********************************
echo.
cd ..
mkdir %folderName%
cd %folderName%
md app config public
cd app
md controllers models routes views
cd ..
cd public
md js partials
cd ..
echo Pastas e subpastas criadas
%SystemRoot%\explorer.exe ..\%folderName%
echo **********************************
echo npm init ... (criando package.json)
echo **********************************
npm init --yes
