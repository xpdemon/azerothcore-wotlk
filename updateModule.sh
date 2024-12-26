#!/bin/bash

# Vérifie si Git est installé
if ! command -v git &> /dev/null
then
    echo "Git n'est pas installé. Veuillez l'installer et réessayer."
    exit 1
fi

# Vérifie si le fichier .gitmodules existe
if [ ! -f .gitmodules ]; then
    echo "Le fichier .gitmodules est introuvable. Assurez-vous d'être dans le bon répertoire."
    exit 1
fi

# Initialise les sous-modules
echo "Initialisation des sous-modules..."
git submodule init

# Met à jour les sous-modules
echo "Mise à jour des sous-modules..."
git submodule update

echo "Tous les sous-modules ont été clonés et initialisés avec succès dans ./modules."
