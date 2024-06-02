#!/bin/bash

# Créer les répertoires si nécessaire
mkdir -p Textes Images Archives Autres

# Parcourir tous les fichiers du répertoire courant
for file in *; do
  if [ -f "$file" ]; then
    case "$file" in
      *.txt) mv "$file" Textes/ ;;
      *.jpg|*.png) mv "$file" Images/ ;;
      *.zip|*.tar.gz) mv "$file" Archives/ ;;
      *) mv "$file" Autres/ ;;
    esac
  fi
done

# Lister les permissions des fichiers
ls -lR
