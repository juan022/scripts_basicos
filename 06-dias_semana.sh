#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
# 
# Descripcion: Cuantos de los dias indicados por argumento son festivos y cuantos son laborables
# ---------------------------------------------------------------------------------------------------

laborables=0
festivos=0

for dia in $*
do
  case $dia in
  dl|dt|dc|dj|dv) 
    laborables=$((laborables+1));;
  ds|dm) 
    festivos=$((festivos+1));;
  *) 
    echo "dia: $dia no valido" >> /dev/stderr;; 
  esac
done

echo "Laborables: $laborables"
echo "Festivos: $festivos"
