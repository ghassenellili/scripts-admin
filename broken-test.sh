#!/bin/bash
# Script avec erreur volontaire

echo "Test"

# Erreur : if sans fi
if [ -f test.txt ]; then
    echo "Fichier existe"
fi 


echo "Fin"
