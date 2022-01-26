#!/bin/bash
#*****************************
#CAPTURA DE PANTALLA DE MANERA REMOTA USANDO gnome-screenshot
#1- tener instalado gnome: sudo apt-get update; sudo apt-get install gnome-screemshot -y
#2- conexion via ssh a la sesion remota en curso: ssh usuario@xxx.xxxx.xxxx.xxxx
#3- crear script en el directorio deseado: touch cap.sh	
#4- cambiar permisos con cuenta administrador: sudo chmod +x cap.sh
#5- ejecutar desde una sesion ssh hacia una sesion local activa: ./cap.sh
#**************************************
echo '*******capturas de pantalla en rango 0 a 3 min*******'
echo
echo '*****gnome-caputre envia la imagen a la carpeta Imagenes/Pictures*****'
echo 
echo '****si no existe dicha carpeta sera enviado a raiz "/usuario " donde se esta ejecutando****'
echo
while true
do
  echo
  echo "***************"
  export DISPLAY=:0
  RANGO=$((180)) #0 a 3 minutos 
  PAUSA=$(($RANDOM%$RANGO))
  echo "pausa: $PAUSA segundos"
  gnome-screenshot
  ls
  MIN=$(($PAUSA/60))
  echo "proxima captura en ≈ ± $MIN minutos"
  sleep $PAUSA
  echo "***************"
  echo
done
#PENDIENTE
#6- una vez finalizado el script se selecciona todo el directorio para copiar su contenido a una nueva carpeta y transferir por SCP, sugerencia sin caracteres:
	#mkdir capturas
	#cp -r /directodio_donde_estan_las_imagenes/ /usuario/capturas
	#dar permisos sudo chmod 777 /capturas/* <- sino no dejara copiar por scp
	#comprimir carpeta: gzip -9 capturas
	#scp usuario_donde_esta_e_archivo_o_carpeta_a_copiar@direccion_ip:/el/directorio/archivo.x /directorio/destino de la pc donde se ejecuta el comando


