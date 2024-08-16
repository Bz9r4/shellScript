#!/bin/bash

#Definir a cor verde
verde='\033[0;32m'

#Resetar a cor ao padrão
reset='\033[0m'

#Frase desejada
frase="We may hope that machines will compete with men in a fairly wide range of tasks. — Alan Turing"

#Solicita ao usuario a quantidade de vezes
echo -n "Numero de vezes que aparece a frase: "
read quantidade

#inicializa a variavel de controle
contador=0

#Loop while para imprimir a frase em verde conforme a quantidade necessaria
while [ $contador -lt $quantidade ]
do
    echo -e "${verde}${frase}${reset}"
    contador=$((contador + 1))
done
