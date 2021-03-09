#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
#
# Descripcion: Mostrar los usuario existentes de los intorducidos por argumento
# ------------------------------------------------------------------------------------
usuarios=""
for nom in $*
do	
  usuarios = $usuarios $(grep -w ^$nom: /etc/passwd | cut -d: -f1 2> /dev/null)
  echo "$usuarios"
done
