#!/bin/bash
# Asumiendo que el estudiante debe nombrar al contenedor 'hapi-fhir'
if [ "$(docker ps -a -q -f name=hapi-fhir)" ]; then
  exit 0
else
  echo "No se encontró un contenedor llamado 'hapi-fhir'. ¿Ejecutaste el comando docker run?"
  exit 1
fi
