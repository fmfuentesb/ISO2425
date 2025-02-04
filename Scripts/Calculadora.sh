#!/bin/bash
# Script de calculadora
# Autor: Francisco Manuel Fuentes Borrallo
# Fecha: 04-02-2025

clear

echo "Autor: Francisco Manuel Fuentes Borrallo"

	if [ $# != 2 ]; then

		echo "Error, debe introducir 2 parámetros"
		exit

	fi

	if [ -f $1.txt ]; then

		echo "Ya existe ese fichero, eliga otro nombre"
		exit

	fi

cont=0

	while [ $cont -lt $2 ]; do

	echo "Contador: $cont"

	cont=$((cont + 1))

		read -p "Operación(S,R,M,D): " op
		read -p "Op 1: " op1
		read -p "Op 2: " op2

		case $op in

		"S")

			echo "Suma"

			echo $op $op1 $op2 >> $1.txt

		;;

		"R")

			echo "Resta"

			echo $op $op1 $op2 >> $1.txt

		;;

		"M")

			echo "Multiplicación"

			echo $op $op1 $op2 >> $1.txt

		;;

		"D")

			echo "División"

			echo $op $op1 $op2 >> $1.txt

		;;


		"X")

			break

		;;

		esac

done

	echo "La ruta del fichero es $1.txt, y su contenido:"
	cat $1.txt
