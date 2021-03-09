#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
# 
# Descripcion: mostrar los primeros 50 caracteres de la entrada estandar
# --------------------------------------------------------------------------

while read -r line
do	
  echo $line | cut -c1-50
done
