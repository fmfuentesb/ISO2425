#!/bin/bash
# Script de agenda
# Autor: Francisco Manuel Fuentes Borrallo
# Fecha: 03-02-2025

clear

while true; do

	echo
	echo "Menú de opciones: "
	echo "a) Añadir una entrada"
	echo "b) Buscar por dni"
	echo "c) Ver la agenda completa"
	echo "d) Eliminar todas las entradas de la agenda"
	echo "e) Finalizar"
	echo
	read -p "Eliga una opción: " op
	echo

	case $op in

	a)

		read -p "Dime el DNI: " dni

		if grep "^$dni:" agenda.txt > /dev/null ; then

			echo "Usuario ya existente"

		else

			read -p "Introduzca un nombre: " nom

			read -p "Introduzca sus apellidos: " ap

			read -p "Introduzca su localidad: " loc

			echo "$nom:$ap:$loc" >> agenda.txt

			echo "Se ha creado un contacto con los datos introducidos en la agenda"
		fi

	;;

	b)

		read -p "Introduzca un DNI: " dni

		if grep "^$dni:" agenda.txt >> /dev/null ; then

			dni=$(grep $dni agenda.txt | cut -d ":" -f 1)
			nombre=$(grep $dni agenda.txt | cut -d ":" -f 2)
			apellido=$(grep $dni agenda.txt | cut -d ":" -f 3)
			ciudad=$(grep $dni agenda.txt | cut -d ":" -f 4)

			echo "La persona con DNI número $dni es: $nombre $apellido, y vive en $ciudad"

		else

			echo "Mensaje de error"

		fi 

	;;

	c)

		if [ -e agenda.txt ]; then

			echo "Estos son los datos de la agenda completa: "

			cat agenda.txt

		else

			echo "Agenda vacía"

		fi

	;;

	d)

		> agenda.txt

		echo "Se ha vaciado la agenda"

	;;

	e)

		echo "Has pulsado finalizar"

		break

	;;

	esac

done
