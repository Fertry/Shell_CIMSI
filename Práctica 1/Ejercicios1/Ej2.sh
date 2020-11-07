#!/bin/bash
# Script 2 - Tres procesos que más memoria consumen:
# Alejandro Fernandez Trigo
echo "Los tres procesos que mas consumen: "
ps aux --sort -rss | head -n 4
