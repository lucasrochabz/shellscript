#!/bin/bash

# Declaração de variáveis
path="$HOME/repositorio"
project_name="projeto_teste"

# Manipulação de arquivos e diretórios
mkdir -p "$path/$project_name"
# Segurança no controle de fluxo: '|| exit' para evitar que o script continue caso o cd falhe.
cd "$path/$project_name" || exit


touch index.html
touch style.css
touch script.js

# Saída de informações
echo "Projeto criado em $path/$project_name"
