### Examen Instalación y actualización de sistemas operativos

**Logros de Instalación de Arch Linux** (Total: 40 puntos)

1. Descargar la ISO de Arch Linux desde la página oficial y mostrar el archivo descargado. **(1 punto)**
2. Crear una máquina virtual en VirtualBox con 2GB de RAM y 20GB de disco duro. **(2 punto)**
3. Configurar el teclado en español con `loadkeys es`. **(2 punto)**
4. Listar discos y particiones con `lsblk` para verificar el disco de instalación. **(2 punto)**
5. Comprobar la conectividad a Internet ejecutando `ping archlinux.org`. **(2 punto)**
6. Crear tres particiones en `/dev/sda` con `cfdisk`: arranque, sistema y swap. **(4 puntos)**
7. Formatear las particiones: FAT32 para arranque, ext4 para sistema, y swap para la partición de intercambio. **(3 puntos)**
8. Montar la partición del sistema en `/mnt` y la de arranque en `/mnt/boot`. **(2 puntos)**
9. Instalar los paquetes base con `pacstrap` en `/mnt`. **(3 puntos)**
10. Generar el archivo `fstab` y verificarlo en `/mnt/etc/fstab`. **(2 puntos)**
11. Ingresar al sistema con `arch-chroot /mnt`. **(1 punto)**
12. Establecer la contraseña de root usando `passwd`. **(1 punto)**
13. Crear el usuario `mikel` con privilegios de root y añadirlo al grupo `wheel`. **(3 puntos)**
14. Editar `/etc/sudoers` para permitir el uso de `sudo` al usuario `mikel`. **(2 puntos)**
15. Instalar y configurar GRUB en `/dev/sda`. **(3 puntos)**
16. Activar `NetworkManager` y verificar la conexión a Internet con `ping google.com`. **(2 puntos)**
17. Instalar GNOME y activar `gdm` para iniciar automáticamente la interfaz gráfica. **(5 puntos)**

**Logros de Configuración del Disco `/home`** (Total: 20 puntos)

18. Añadir un disco adicional en la máquina virtual para `/home`. **(2 punto)**
19. Crear una partición primaria en `/dev/sdb` con `cfdisk` y formatearla en Ext4. **(3 puntos)**
20. Montar temporalmente el nuevo disco en `/mnt/tmp`. **(2 punto)**
21. Copiar el contenido de `/home` al disco montado en `/mnt/tmp` usando `rsync`. **(3 puntos)**
22. Desmontar `/mnt/tmp` y montar el disco en `/home`. **(2 puntos)**
23. Agregar la línea de montaje de `/dev/sdb1` en `/etc/fstab`. **(3 puntos)**

**Logros de Configuración del Sistema de Backups Automáticos** (Total: 20 puntos)

24.  Crear un script `script_backup.sh` en `/usr/local/bin` que haga un `rsync` de `/home/carpetaimportante` a `/home/backup` o `/mnt/backup/home`. **(5 puntos)**
25.  Dar permisos de ejecución al script `script_backup.sh` con `chmod 755`. **(5 punto)**
26.  Instalar y habilitar `cronie` para gestionar los cronjobs. **(5 puntos)**
2.  Configurar un cronjob diario a las 16:20 para ejecutar `script_backup.sh`. **(5 puntos)**

**Logros de Configuración SSH y Conexión desde Windows** (Total: 15 puntos)

28. Instalar el servicio SSH con `pacman -S openssh` y activarlo con `systemctl enable sshd`. **(4 puntos)**
29. Arrancar el servicio SSH con `systemctl start sshd`. **(2 punto)**
30. Conectarse desde el sistema Windows al servidor Linux usando un cliente SSH: `ssh mikel@196.169.10.0`. **(4 puntos)**
31. Editar el archivo de configuración `/etc/ssh/sshd_config` en Linux para personalizar la configuración del servicio. **(5 puntos)**


**Logros de Documentación** (Total: 30 puntos)

32. Responde a las preguntas en este fichero markdown respetando el formato de mardown. **(7 puntos)**
33. Incluye un índice de markdown funcional. **(3 puntos)**
34. Incluye pruebas en forma de capturas si lo consideras apropiado, incluyendo aclaraciones o anotaciones necesarias. **(11 puntos)**
35. Convierte el documento a HTML. **(3 puntos)**
36. Corrige las rutas de las imágenes si las hay e imprime el documento a PDF usando el explorador. **(6 puntos)**

**Puntuación Total del Examen: 125 puntos** 
**Puntuación sobre 100**