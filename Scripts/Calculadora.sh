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

		read -p "Op(S,R,M,D) op1 op2: " op op1 op2

		case $op in

		"S")

			res=$(($op1 + $op2))
			echo "$op1 + $op2 = $res"
			echo $op $op1 $op2 = $res >> $1.txt

		;;

		"R")

			res=$(($op1 - $op2))
			echo "$op1 - $op2 = $res"
			echo $op $op1 $op2 = $res >> $1.txt

		;;

		"M")

			res=$(($op1 * $op2))
			echo "$op1 x $op2 = $res"
			echo $op $op1 $op2 = $res >> $1.txt

		;;

		"D")

			res=$(($op1 / $op2))
			echo "$op1 : $op = $res"
			echo $op $op1 $op2 = $res >> $1.txt

		;;


		"X")

			break

		;;

		*)

			echo "Valor no válido"
			break

		;;

		esac

done

	echo "La ruta del fichero es $1.txt, y su contenido:"
	cat $1.txt
