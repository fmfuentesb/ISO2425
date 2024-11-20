@echo off
rem Script de Media
:: Autor:Francisco Manuel Fuentes Borrallo
rem Fecha: 20-11-2024

echo Menú de opciones:
echo 1.-Crear fichero con nombre pedido al usuario
echo 2.-Mostrar el árbol de directorios de la carpeta de usuario
echo 3.-Mostrar archivos con extensión txt
echo 4.-Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo 5-Copie el contenido de tu carpeta de usuario al Escritorio

set /P opcion="Seleccione una opcion: "
if %opcion% EQU 1 goto crear_fichero
if %opcion% EQU 2 goto arbol_directorios
if %opcion% EQU 3 goto archivos_txt
if %opcion% EQU 4 goto crear_directorio
if %opcion% EQU 5 goto copiar_contenido

:crear_fichero
set /P nombre_fichero="Introduzca el nombre del fichero: "
echo > %nombre_fichero%.txt
echo Se ha creado el fichero con nombre  %nombre_fichero%.
pause 
exit

:arbol_directorios
echo Este es el árbol de directorios de la carpeta de usuario
tree %USERPROFILE%
pause 
exit

:archivos_txt
echo Estos son los archivos con extensión txt
dir *.txt
pause 
exit 

:crear_directorio
echo Se han creado los directorios alfredoff, marinapg y ramonam
mkdir alfredoff
mkdir marinapg
mkdir ramonam
pause
exit

:copiar_contenido
echo Se ha copiado el contenido de la carpeta al Escritorio
xcopy %USERPROFILE% C;\Users\alumno\Desktop
pause
exit