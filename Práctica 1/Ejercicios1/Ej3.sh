#!/bin/bash
# Script 3 - Eliminar lineas repetidas de un archivo con uniq:
# Alejandro Fernandez Trigo
if [ $# -ne 1 ]
then
echo "Necesita un único parámetro"
fi
if [ -f $1 ]
then 
cat $1 | uniq > resultado3.txt
cat resultado.txt
else
echo "No es un fichero"
fi
exit 0
