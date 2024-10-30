### Examen Completo de Logros en Arch Linux con Puntuación

**Logros de Instalación de Arch Linux**  (Total: 35 puntos)

1. Descargar la ISO de Arch Linux desde la página oficial y mostrar el archivo descargado. **(1 punto)**
2. Crear una máquina virtual en VirtualBox con 2GB de RAM y 20GB de disco duro. **(1 punto)**
3. Configurar el teclado en español con `loadkeys es`. **(1 punto)**
4. Listar discos y particiones con `lsblk` para verificar el disco de instalación. **(1 punto)**
5. Comprobar la conectividad a Internet ejecutando `ping archlinux.org`. **(1 punto)**
6. Crear tres particiones en `/dev/sda` con `cfdisk`: arranque, sistema y swap. **(3 puntos)**
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

**Logros de Configuración de `/home` y Backups Automáticos** (Total: 35 puntos)

18. Añadir un disco adicional en la máquina virtual para `/home`. **(1 punto)**
19. Crear una partición primaria en `/dev/sdb` con `cfdisk` y formatearla en Ext4. **(2 puntos)**
20. Montar temporalmente el nuevo disco en `/mnt/tmp`. **(1 punto)**
21. Copiar el contenido de `/home` al disco montado en `/mnt/tmp` usando `rsync`. **(2 puntos)**
22. Desmontar `/mnt/tmp` y montar el disco en `/home`. **(2 puntos)**
23. Agregar la línea de montaje de `/dev/sdb1` en `/etc/fstab`. **(2 puntos)**
24. Añadir un segundo disco para backups, particionarlo y formatearlo en Ext4. **(3 puntos)**
25. Montar el disco de backup en `/mnt/backup/home`. **(2 puntos)**
26. Crear un script `script_backup.sh` en `/usr/local/bin` que haga un `rsync` de `/home` a `/mnt/backup/home`. **(3 puntos)**
27. Dar permisos de ejecución al script `script_backup.sh` con `chmod 755`. **(1 punto)**
28. Instalar y habilitar `cronie` para gestionar los cronjobs. **(2 puntos)**
29. Configurar un cronjob diario a las 16:20 para ejecutar `script_backup.sh`. **(3 puntos)**
30. Instalar y habilitar `openssh`, activando el servicio SSH con `systemctl enable sshd`. **(4 puntos)**

**Puntuación Total del Examen: 70 puntos**

Cada logro tiene su asignación de puntos en función de su complejidad y relevancia.