#!/bin/bash

#es mostra l'escript executat
echo "Nom del script ${0}"

# mostram el PATH (ruta) i el filename del script
echo "el PATH: $(dirname ${0}) el fitxer seria $(basename ${0})"

# per determinar el número de paràmetre
NUMERO_DE_PARAMETRES=${#}

if [[ ${NUMERO_DE_PARAMETRES} -eq 0 ]]
then
    echo "USAGE: ${0} USER_NAME [USER_NAME] ..."
    exit 1
fi

#${*} mostra el conjunt de paràmetres en una sola variable "${1} ${2} ..... ${n}"
echo "${*}"
echo
#${@} mostra el conjunt de paràmetres en paraules diferènts "${1}" "${2}" "${n}"
echo "${@}"

# estructura de control FOR per iterar els paràmetres

for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done