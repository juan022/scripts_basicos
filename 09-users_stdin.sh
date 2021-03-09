#! /bin/bash
# @Juan Sámchez
#
# Feb 2021
# Descricpion: Mostrar usuarios existentes de los indicados por stdin
# --------------------------------------------------------------------------


while read -r line
do	
  grep ^$line: /etc/passwd &> /dev/null
  if [ $? -eq 0 ]
  then
   echo $line
  else
   echo "El usuario $line no existe" >> /dev/stderr
  fi
done

