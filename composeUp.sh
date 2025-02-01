#!/bin/bash

export MEDIA_PATH=/mnt/d

# Diretório onde estão os arquivos YAML
COMPOSE_DIR="."

# Arquivo principal que deve ser o primeiro
MAIN_FILE="docker-compose.yml"

# Monta os arquivos adicionais, excluindo o arquivo principal
ADDITIONAL_FILES=$(find "$COMPOSE_DIR" -name "*.yml" ! -name "$MAIN_FILE" -printf "-f %p ")

# Concatena o arquivo principal com os adicionais
COMPOSE_FILES="-f $MAIN_FILE $ADDITIONAL_FILES"

# Executa o comando docker-compose com os arquivos encontrados
docker-compose $COMPOSE_FILES up -d
