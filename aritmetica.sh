#!/bin/bash
# aquest script ens mostra operacions aritmètiques

read -p "introdueix el valor de x: " X
read -p "introdueix el valo de y: " Y

echo "Has introduit ${X} i ${Y}"
# para hacer calculaciones:
# calc=$((XxY))
# echo "${Y}x${Y}=${calc}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"
PRODUCTE=$((X*Y))
echo "${X}*${Y}=${PRODUCTE}"
DIVISIO=$((X/Y))
echo "${X}/${Y}=${DIVISIO}"