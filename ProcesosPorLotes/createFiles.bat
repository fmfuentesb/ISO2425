@echo off
rem Script de Media
:: Autor:Francisco Manuel Fuentes Borrallo
rem Fecha: 20-11-2024

echo Presiona opcion 1 para crear archivo.txt
echo Presiona opcion 2 para crear archivo.bat
set /P op="Elige la opcion "
if %op% EQU 1 goto Crear1
if %op% EQU 2 goto Crear2
:Crear1
set /P nom.txt="Introduzca un nombre para archivo .txt: "
echo > %nom.txt%.txt
echo Se ha creado un archivo .txt con el nombre %nom.txt%
pause
:Crear2
set /P nom.bat="Introduzca un nombre para archivo .bat: "
echo > %nom.bat%.bat
echo Se ha creado un archivo .bat con el nombre %nom.bat%
