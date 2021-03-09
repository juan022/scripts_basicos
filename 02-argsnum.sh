#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
#
# Descripcion: mostrar argumentos numerados linea a linea
# -------------------------------------------------------------------

num=1

for arg in $*
do	
  echo "$num: $arg"
  num=$((num+1))  
done
