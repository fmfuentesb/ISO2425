#!/bin/bash
# Script entregable de FiveOrMore
# Autor: Francisco Manuel Fuentes Borrallo
# Fecha: 10-02-2025

clear

if [ $# != 2 ]; then

	echo "Número de parámetros incorrectos"
	exit

fi

if [ -f $1 ]; then

	echo "El fichero existe"
	exit

else

	echo "El fichero no existe"

fi

if [ -d $2 ]; then

	echo "El directorio existe"

else

	echo "El directorio no existe"
	exit

fi

arch=$(ls $2 | wc -l)
if [ $arch -eq 0 ]; then

	echo "El directorio está vacío"
	exit

else

	echo "El directorio no está vacío"

fi

echo "Francisco Manuel Fuentes Borrallo"

for i in $2/*.txt; do

lineas=$( cat $i | wc -l )

	if [ $lineas -ge 5 ]; then

		echo $i
		echo $i >> $1
		palabras=$( cat $i | wc -w )
		echo "El fichero original tiene $palabras palabras" > $i.q
		cat $i >> $i.q

	else

		echo "No tiene las características necesarias"

	fi

done

num=$(cat $1 | wc -l)

	echo "El fichero $1 tiene $num líneas " >> $1


