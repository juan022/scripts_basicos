#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
#
# Descripcion: Procesar linea a linea la entrada estandar, si tiene mas de 60 car mostrar la linea
# -------------------------------------------------------------------

while read -r line
do	
  car=$(echo "$line" | wc -c)
  if [ "$car" -gt 61 ]; then
    echo $line
  fi	  
done
