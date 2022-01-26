# CAPTURA DE PANTALLA DE MANERA REMOTA USANDO gnome-screenshot


> ## 1 tener instalado gnome-screenshot en la terminal a ejecutar
  ###### `sudo apt-get update; sudo apt-get install gnome-screemshot -y `
> ## 2 conexion via ssh a la sesion remota en curso 
  ###### `ssh usuario@xxx.xxxx.xxxx.xxxx`
> ## 3 crear script en el directorio deseado
###### `touch cap.sh`
> ## 4 cambiar permisos con cuenta administrador 
###### `sudo chmod +x cap.sh`
> ## 5 ejecutar desde una sesion ssh hacia una sesion local activa 
###### `./cap.sh`

# NOTA
1 gnome-screenshot envia la imagen a la carpeta Imagenes/Pictures segun sea el caso

2 si no existe dicha carpeta sera enviado a raiz "/usuario " donde se esta ejecutando la sesion SSH
