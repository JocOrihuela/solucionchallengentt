# solucionchallengentt

El proyecto aprovecha las herramientas de hype (terraform, ansible, docker, ...)
para automatizar la implementación de controllers y workers‍ en cluster de kubernetes en GCE.

## Como utilizar
- Clonar el repositorio en la ruta /opt.
- Colocar tu `keys.json` en el directorio /opt/k8s-gcp-whoami-master/app y sobreescribir por el ejemplo existente (respetar el nombre keys.json).
- Ejecutar el script solutionChallengeT1.sh y escribir el numero asignado a la opcion CREATE.
- Lanzamiento `./Start_tools.sh`, creará una imagen de la ventana acoplable y lanzará un contenedor con
todas las herramientas necesarias (kubectl, kubeadm, gcloud ...).
- En el contenedor, lance `./Create.sh` y espere aproximadamente 15 minutos.
- Una vez terminado, acceda a la IP de cualquier worker en el puerto 80 /whoami.

Cuando termine, inicie `./Cleanup.sh` para eliminar todos los recursos de gce y otros archivos que crea la instalación.

## Cuenta de Gcloud

Para interactuar con la API de Gcloud usamos una cuenta de servicio.
El `keys.json` es el archivo de clave de su cuenta de servicio.
