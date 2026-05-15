#!/bin/bash
docker info > /dev/null 2>&1
if [ $? -eq 0 ]; then
  exit 0
else
  echo "Docker no parece estar respondiendo correctamente."
  exit 1
fi
