#!/bin/bash
# Script 1 - Dado el fichero como entrada, devuelve el nº de lineas:
# Alejandro Fernandez Trigo
if [ $# -ne 1 ]
then
echo "Necesita un único parámetro"
fi
if [ -f $1 ]
then 
cat $1 | wc -l
else
echo "No es un fichero"
fi
exit 0
