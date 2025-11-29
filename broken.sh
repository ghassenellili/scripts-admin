#!/bin/bash
# Script avec erreur volontaire

echo "Début du script"

# Erreur : if sans fi
if [ -f test.txt ]; then
    echo "Le fichier existe"
# fi manquant !

echo "Fin du script"
