#!/bin/bash
# Mettre à jour tous les sous-modules pour suivre leur branche configurée

git submodule foreach --recursive '
    echo "Mise à jour de $name...";
    git checkout master;
    git pull origin master;
'
git add .
git commit -m "Mise à jour de tous les sous-modules vers leurs dernières versions"
