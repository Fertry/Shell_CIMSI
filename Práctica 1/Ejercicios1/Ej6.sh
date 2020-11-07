#!/bin/bash
# Script 6 - Dado una extensión de origen y otra de destino,
# cambia las extensiones de todos los archivos con la extensión
# de origen por la extensión de destino:
# Alejandro Fernandez Trigo
if [ $# -ne 2 ]
then 
echo "ERROR: 0 o más de 2 parametros"
else
for archivo in *$1
do
nombreArchivo=$(basename $archivo $1)
mv "$archivo" "$nombreArchivo$2"
done
fi
exit 0
