### Paso 3/4. Monitoreo del arranque (Paso crítico)
HAPI FHIR es un servidor basado en Java y tarda unos segundos en "despertar". 
No intentes entrar a la web todavía. Ejecuta el siguiente comando para ver los registros del servidor:

```bash
docker logs -f fhir-server
```{{execute}}

> [!IMPORTANT]
> Espera a ver un mensaje que diga: **"Started Application in X.XXXX seconds"**. Una vez que lo veas, presiona **Ctrl + C** para volver a la terminal.
