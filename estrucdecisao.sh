#!/bin/bash

#Perguntar a idade
echo "Qual a sua idade?"
read IDADE

#verifica se a idade é maior ou igual
if [[ ${IDADE} -ge 18 ]]

#se for verdade
then
    echo "Você é maior de 18 anos e pode aproveitar o ticaracatica"

#se não for verdade
else    
    echo "AHAHAHAHAHAH Você não tem idade para ir no ticaracatica, parabens zé"

#finalizar com fi
fi
