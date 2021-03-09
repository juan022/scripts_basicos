#! /bin/bash
# @ Juan Sánchez
#
# Feb 2021
#
# Descripcion: Mostrar la entrada estandar numerada linea a linea
# ------------------------------------------------------------------

num=1

while read -r line
do	
  echo "$num: $line"
  num=$((num+1))  
done
