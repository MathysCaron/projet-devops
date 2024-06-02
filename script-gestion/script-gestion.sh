#!/bin/bash

# Script de gestion du système de fichiers (en rapport à la formule 1)

# Création des répertoires 
mkdir -p écuries/pilotes célèbres/légendaires

# Parcourir tous les fichiers du répertoire courant
for file in *; do
  if [ -f "$file" ]; then
    case "$file" in
      *mercedes*|*ferrari*|*red_bull*) mv "$file" écuries/ ;;
      *hamilton*|*vettel*|*verstappen*) mv "$file" écuries/pilotes/célèbres/ ;;
      *senna*|*prost*|*schumacher*) mv "$file" écuries/pilotes/légendaires/ ;;
      *) mv "$file" autres/ ;;
    esac
  fi
done

# Lister les permissions des fichiers
ls -lR
