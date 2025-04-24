#!/bin/bash

# Número de pastas extras a criar (pode passar como argumento ou alterar manualmente aqui)
extras=$1

if [ -z "$extras" ]; then
  echo "Uso: $0 <quantidade de pastas extras>"
  exit 1
fi

# Conta quantas pastas do tipo aulaNN existem no diretório atual
existing=$(ls -d aula* 2>/dev/null | grep -E '^aula[0-9]{2}$' | wc -l)

# Define o próximo número e o número final
start=$((existing + 1))
end=$((existing + extras))

# Cria as pastas
for i in $(seq -w $start $end); do
  mkdir "aula$i"
  echo "Criada pasta: aula$i"
done
