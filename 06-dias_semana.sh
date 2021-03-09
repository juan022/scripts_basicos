#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
#
# Ejercicio 06 de la lista de basicos 02
#
# Descripcion: Cuantos de los dias indicados por argumento son festivos y cuantos son laborables
# ---------------------------------------------------------------------------------------------------

laborables=0
festivos=0

# Validar que exista minimo un arg
if [ $# -lt 1 ]
then
 echo "Error: num de argumentos incorrecto"
 echo "Usage: $0 dia[...]"
 exit 1
fi


##
for dia in $*
do
  case $dia in
  dilluns|dimarts|dimecres|dijous|divendres) 
    laborables=$((laborables+1));;
  dissabte|diumenge) 
    festivos=$((festivos+1));;
  *) 
    echo "dia: $dia no valido" >> /dev/stderr;; 
  esac
done

echo "Laborables: $laborables"
echo "Festivos: $festivos"
