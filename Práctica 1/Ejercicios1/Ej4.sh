#!/bin/bash
# Script 4 - Si no se pasan 2 parametros = error
# Informa si los dos parametros son iguales o distintos:
# Alejandro Fernandez Trigo
if [ $# -ne 2 ]
then 
echo "ERROR: 0 o más de 2 parametros"
else
if [ $1 == $2 ]
then 
echo "IGUALES"
else
echo "DISTINTOS"
fi
fi
exit 0
