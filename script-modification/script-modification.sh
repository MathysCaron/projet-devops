#!/bin/bash

# Ajouter une ligne à la fin des fichiers des pilotes célèbres
for file in écuries/pilotes/célèbres/*; do
  if [ -f "$file" ]; then
    echo "j'ai gagné la course !" >> "$file"
  fi
done

# Remplacer une chaîne de caractères dans les fichiers des pilotes légendaires
for file in écuries/pilotes/légendaires/*; do
  if [ -f "$file" ]; then
    sed -i 's/champion/legende/g' "$file"
  fi
done
