
# Gestión de Usuarios 👱

- [Gestión de Usuarios 👱](#gestión-de-usuarios-)
  - [Ver los usuarios y grupos del sistema](#ver-los-usuarios-y-grupos-del-sistema)
  - [Gestionar Usuarios 🙎](#gestionar-usuarios-)
    - [Crear usuarios](#crear-usuarios)
    - [Eliminar usuarios](#eliminar-usuarios)
    - [Cambiar contraseña de usuarios](#cambiar-contraseña-de-usuarios)
  - [Grupos 👥](#grupos-)
    - [Crear un Grupo](#crear-un-grupo)
    - [Añadir usuario a un grupo](#añadir-usuario-a-un-grupo)
    - [Eliminar un Grupo](#eliminar-un-grupo)

## Ver los usuarios y grupos del sistema

Todos los usuarios de linux se pueden ver en el fichero `/etc/passwd`

El fichero contiene una tabla con una serie de columnas
```bash
mauricio:x:1006:1006::/home/mauricio:/bin/sh
```
- nombre usuario: mauricio
- x: la contraseña encriptada del usuario. El valor real está en /etc/shadow.
- userID: el número de identificación del usuario 1006.
- groupID: el número de identificación del grupo al que pertenece el usuario 1006.
- Userinfo: información extra sobre el usuario.
- homedir: el directorio personal del usuario /home/mauricio
- /bin/bash: el shell de inicio de sesión por defecto del usuario.

## Gestionar Usuarios 🙎

### Crear usuarios 

- useradd : Crea un usuario de forma rápida, sin establecer contraseña ni pedir información (pueden añadirse parametros)

- adduser: Creación de usuario interactiva.

### Eliminar usuarios

- userdel 

### Cambiar contraseña de usuarios

Las contraseñas se cambian con el comando `passwd`, la puede cambiar uno mismo o el administrador o alguien con derechos de administrador.

## Grupos 👥

Todos los grupo de linux se pueden ver en el fichero `/etc/group`

### Crear un Grupo

Se crea un grupo con groupadd


### Añadir usuario a un grupo

Para añadir un grupo podemos usar el comando usermod.

```bash
sudo usermod -aG lanbide josue
```
Podemos ver los grupos a los que pertenece un usuario con el comando.

```bash
groups josue
```
![alt text](imagenes/grupos.png)

### Eliminar un Grupo

Para eliminar un grupo podemos usar el comando:

```bash
groupdel nombre-grupo
```
