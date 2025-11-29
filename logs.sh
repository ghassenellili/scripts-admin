#!/bin/bash
# Script de gestion des logs

LOG_DIR="/var/log"
ARCHIVE_DIR="$HOME/logs-archive"

echo "=== GESTION DES LOGS ==="
echo "Date : $(date)"
echo ""

# Créer le dossier d'archives
mkdir -p "$ARCHIVE_DIR"

# Afficher les gros fichiers de log
echo "📊 Fichiers de log les plus volumineux :"
sudo du -sh /var/log/* 2>/dev/null | sort -rh | head -5
echo ""

# Compter les lignes dans les logs système
echo "📈 Statistiques des logs :"
if [ -f /var/log/syslog ]; then
    echo "  - Syslog : $(wc -l < /var/log/syslog) lignes"
fi
if [ -f /var/log/auth.log ]; then
    echo "  - Auth.log : $(wc -l < /var/log/auth.log) lignes"
fi
echo ""

echo "✅ Analyse terminée"

