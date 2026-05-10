Paso 2. Descarga y despliegue del servidor
Vamos a ejecutar un comando que hará dos cosas: descargar la imagen oficial desde Docker Hub y levantar el servidor.

Ejecuta el siguiente comando (puedes copiar y pegar en la terminal):

```bash
docker run -d --name fhir-server \
  -p 8080:8080 \
  -e "JAVA_OPTS=-Xms512m -Xmx1024m" \
  -e "hapi.fhir.fhir_version=R4" \
  hapiproject/hapi:latest
``` {{copy}}
