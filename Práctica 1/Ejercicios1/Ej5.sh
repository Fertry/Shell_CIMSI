#!/bin/bash
# Script 5 - Borra todos los archivos del directorio que incluyen más
# de tres líneas con la etiqueta TAG:
# Alejandro Fernandez Trigo
for archivo in *txt
do 
contador=$(grep 'TAG' $archivo | wc -l)
if [ "$contador" -gt 3 ]
then 
rm "$archivo"
fi
done
exit 0
