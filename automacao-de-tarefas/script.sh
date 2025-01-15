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

# Atribuição de conteúdo para arquivos
echo "<!DOCTYPE html>
<html lang=\"pt-br\">

<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <link rel=\"stylesheet\" href=\"style.css\">
  <title>Automação de tarefas</title>
</head>

<body>
  <h1>Hello World!</h1>
  <script src=\"script.js\"></script>
</body>

</html>" > index.html

echo "h1 {
  background-color: blue;
}" > style.css

echo "console.log('O projeto foi carergado com sucesso!');" > script.js

# Saída de informações
echo "Projeto criado em $path/$project_name"
