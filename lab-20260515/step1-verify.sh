#!/bin/bash

# 1. Verificar que Docker esté activo (lo técnico)
docker info > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Docker no está respondiendo."
  exit 1
fi

# 2. Verificar que el alumno interactuó (lo educativo)
# Buscamos en el historial del bash actual
if grep -qsE "docker (--version|version|ps)" /root/.bash_history; then
  exit 0
else
  echo "Por favor, ejecuta los comandos de verificación en la terminal antes de continuar."
  exit 1
fi
