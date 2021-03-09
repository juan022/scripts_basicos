#! /bin/bash
# @Juan Sánchez
#
# 2021
#
# Descripcion: Contador desde 0 al numero indicado por arg
# -------------------------------------------------------------------

cont=0

MAX="$1"

while [ $cont -le $MAX ]
do	
  echo "$cont"
  cont=$((cont+1))  
done
