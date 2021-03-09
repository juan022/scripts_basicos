#! /bin/bash
# @Juan Sánchez
#
# Feb 2021
#
# Descripcion: Mostrar los usuario existentes de los intorducidos por argumento
# ------------------------------------------------------------------------------------

# NO FUNCIONA

for $user in $*
do
 grep ^$user: /etc/passwd &> /dev/null
 if [ $? -eq 0 ]
 then
  echo $user
 else
  echo "El usuario $user no existe" >> /dev/stderr
 fi
done
