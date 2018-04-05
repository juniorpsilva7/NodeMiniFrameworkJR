@echo off
echo **********************************
echo DEPENDENCIES INSTALLATION
echo **********************************
echo.
cd ..
cd %folderName%
npm install --save body-parser cookie-parser ejs express express-load express-session fs helmet@0.4.2 method-override mongo-sanitize mongodb mongoose mongoose-findorcreate multer passport passport-facebook passport-github passport-local