#!/bin/bash

#Definir a cor verde
VERDE='\033[0;32m'

#Resetar a cor ao padrão
RESET='\033[0m'

#Frase desejada
FRASE="We may hope that machines will compete with men in a fairly wide range of tasks. — Alan Turing"

#Loopfor para imprimir a frase em verde 5 vezes
for i in {1..5}
do
    echo -e "${VERDE}${FRASE}${RESET}"
done
