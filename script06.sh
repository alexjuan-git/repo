#!/bin/bash

# en aquest script podrem passar tres arguments start, stop i status
# segons l'argument que passem donarem un missatge per pantalla que serà:
# starting, stopping, the status is ....
# si no es cap d'aquests valors la sortida serà: valor no vàlid

#if [[ "${1}" = "start" ]]
#then
#	echo "Starting.... skibidi"
#elif [[ "${1}" = "stop" ]]
#then
#	echo "Stopping.... toilet"
#elif [[ "${1}" = "status" ]]
#then
#	echo "the status is.... dop dop"
#else
#	echo "Enter a valid option."
#fi

# ho farem amb CASE
case "${1}" in
	start|s|--start|starting)
	 echo "Starting... skibidi"
	 ;;
	stop)
	 echo "Stopping... toilet"
	 ;;
	status)
	 echo "The status is... dop dop"
	 ;;
	*)
	 echo "Enter a valid option... yes yes"
esac

