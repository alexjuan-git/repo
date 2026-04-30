#!/bin/bash
function usage(){
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    echo "l'usuari no és pot repetir"
    exit 1
}

#script per crear usuari

#primer comprovam si som root
if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introdueix el nom d'usuari: " USER_NAME