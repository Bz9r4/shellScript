#!/bin/bash

#Calculadora em Shell Script

# Solicita ao usuario que insira o primeiro numero
echo -n "Digite o primeiro numero: "
read num1

#Solicita ao usuario que insira o operador
echo -n "Digite o operador(+,-,*,/): "
read operador

#Solicita ao usuario que insira o segundo numero
echo -n "Digite o segundo numero: "
read num2

#Verifica o operador inserido e realiza a operação
if [ "$operador" == "+" ]; then
    resultado=$((num1 + num2))

elif [ "$operador" == "-" ]; then
    resultado=$((num1 - num2))

elif [ "$operador" == "*" ]; then
    resultado=$((num1 * num2))

elif [ "$operador" == "/" ]; then

#Verifica se o divisor é zero para evitar divisão por zero
if [ "$num2" -eq 0 ]; then
    echo "Erro:Divisão por zero não é permitido!"
    exit 1
fi

#Utiliza 'bc' para divisão com precisão decimal
resultado=$(echo "scale=2; $num1 / $num2" | bc)

    echo "Operador invalido! Use +,-,*,/"
    exit 1

fi

#resultado
echo "Resultado:$resultado"
