#! /bin/bash
# @Juan Sámchez
#
# Feb 2021
# Descricpion: Mostrar usuarios existentes de los indicados por stdin
# --------------------------------------------------------------------------


while read -r line
do	
  grep -w "^$line:" /etc/passwd 2> /dev/null

done
