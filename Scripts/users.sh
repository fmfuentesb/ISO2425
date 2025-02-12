#!/bin/bash
# Script entregable Users
# Autor: Francisco Manuel Fuentes Borrallo
# Fecha: 11-02-2025

clear

date=$(date +"%Y":"%m":"%d")
hora=$(date +"%H":"%M")

echo "Informe de usuarios el día $date a las $hora" 

cont=0

IFS=:

while read us x uid gid d h shell; do


	if [ $# != 1 ]; then

		num=1000

		if [ $uid -ge $num ]; then

			echo $us - $uid
			cont=$((cont + 1))
		fi

	else

		num=$1

		if [ $uid -ge $1 ]; then

			echo $us - $uid
			cont=$((cont + 1))
		fi

	fi


done < /etc/passwd



	echo "Total: $cont usuarios"
