## Instrucciones

1. Revisar que está la conexión con "docker status"
2. Listar contenedores disponibles "docker ps"
3. Si no tiene un servidor HAPI FHIR, ejecutar en terminal:

docker run -d --name fhir-server \
  -p 8080:8080 \
  -e "JAVA_OPTS=-Xms512m -Xmx1024m" \
  -e "hapi.fhir.fhir_version=R4" \
  hapiproject/hapi:latest

4. Revisar con "docker ps" que ya está listado y corriendo el contenedor.

## Notas

En el puerto 8080 veremos una interfaz del servidor.
