### Paso 2/4. Descarga y despliegue del servidor
Vamos a ejecutar un comando que hará dos cosas: descargar la imagen oficial desde Docker Hub y levantar el servidor.

Ejecuta el siguiente comando (puedes copiar y pegar en la terminal):

```bash
docker run -d --name fhir-server \
  -p 8080:8080 \
  -e "JAVA_OPTS=-Xms512m -Xmx1024m" \
  -e "hapi.fhir.fhir_version=R4" \
  -e "hapi.fhir.cors.enabled=true" \
  -e "hapi.fhir.cors.allowed_origin=*" \
  -e "hapi.fhir.cors.allowed_header=Content-Type,Authorization,x-fhir-starter,Origin,Accept,X-Requested-With" \
  -e "hapi.fhir.cors.exposed_headers=Location,Content-Location" \
  -e "hapi.fhir.cors.allowed_methods=GET,POST,PUT,DELETE,OPTIONS,PATCH" \
  hapiproject/hapi:latest
```
