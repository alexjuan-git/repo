#!/bin/bash

# Arguments d'entrada
NOM_USUARI=$1
COGNOM_USUARI=$2

# Prompt al usuari
read -p "Nom: " NOM_USUARI
read -p "Cognom: " COGNOM_USUARI

echo "Hello my name is $NOM_USUARI $COGNOM_USUARI"