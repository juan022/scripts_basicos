#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
#
# Ejercicio 4 lista 02
# Descripcion: Indicar los dias que tiene el mes indicado por arg
# -------------------------------------------------------------------

for mes in $*
do
 if [ $mes -lt 1 -o $mes -gt 12 ];
 then
   echo "Error: El mes $mes no es valido"
   echo "Usage: $0 mes(1-12)"
 fi
 case $mes in
         2) echo "El mes $mes tiene 28 dias";;
          1|3|5|7|8|10|12) echo "El mes $mes tiene 31 dias";;
         4|6|9|11) echo "El mes $mes tiene 30 dias";;
 esac
done
