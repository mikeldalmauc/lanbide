# Contearse por SSH 💻

- [Contearse por SSH 💻](#contearse-por-ssh-)
  - [Conectarse por ssh en windows](#conectarse-por-ssh-en-windows)
  - [Arrancar el servicio ssh en linux](#arrancar-el-servicio-ssh-en-linux)
  - [Configurar el servicio en linux](#configurar-el-servicio-en-linux)


Para conectarse por SSH a un equipo, es necesario que se cumplan los siguientes:

- Que el servidor o equipo al que vamos a conectaros esté disponible.
- Que el servicio de SSH esté encendido
- Un cliente SSH en nuestro equipo (por defecto la mayoria de sistemas operativos ya incluyen uno)


Además, para conectarnos tendremos que conocer:
1. La IP o nombre del servidor
2. Un usuario con el que contarnos y su contraseña
   
## Conectarse por ssh en windows

```bash
ssh mikel@196.169.10.0
```
- **196.169.10.0** : ip del servidor
- **mikel** : usuario

## Arrancar el servicio ssh en linux

Para arrancar un servicio en linux se utiliza el comando `systemctl start`:

```bash
systemctl start ssh.service
```

## Configurar el servicio en linux

Para configurar el servicio y cambiar propiedades como el numero de usuarios que pueden conectarse, blacklists y otras cosas lo haremos en **/etc/ssh/ssh.config**