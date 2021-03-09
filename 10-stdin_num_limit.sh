#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
# 
# Descripcion: Mostrar stdin con un  numero maximo de lineas enumeradas
# -------------------------------------------------------------------------

num=1
MAX=$1

while read -r line
do	
  if [ "$num" -le $MAX ]; then
    echo "$num: $line"
  else
    exit 0    
  fi	  
  num=$((num+1))

done
