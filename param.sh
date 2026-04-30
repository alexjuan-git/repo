#!/bin/bash
function usage (){
    echo "USAGE: ${0} USER_NAME [COMMENTS]"
    echo "COMMENTS conté el nom complet"
    exit 1
if [[ ${NUMBER_PARAM} -eq 0 ]]
then
    usage
fi
}
NUMBER_PARAM=${#}

echo "número de paràmetres: ${NUMBER_PARAM}"

# aprendrem a tractar amb els arguments (com s'anomenen a fora) i paràmetres
# com s'anomenen a dins
SCRIPT_NAME=${0}
echo "Nom del script $SCRIPT_NAME"
#${1}.....${9} només del 1 fins al 9
echo "primer paràmetre: ${1}"
USER_NAME=${1}
echo "USER_NAME: ${USER_NAME}"
#desplaçar els paràemtres a la esquerra
shift

NOM_COMPLET=${*}
echo "nom complet: ${NOM_COMPLET}"