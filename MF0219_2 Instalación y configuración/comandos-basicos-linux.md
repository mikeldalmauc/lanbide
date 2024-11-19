
- [1. ls](#1-ls)
- [2. cd](#2-cd)
- [3. `whoami`](#3-whoami)
- [4. `cat`](#4-cat)
- [5. `rm`](#5-rm)
- [6. `> y >>`](#6--y-)
- [7. `sudo`](#7-sudo)
- [8. `useradd`](#8-useradd)
- [9. `passwd`](#9-passwd)
- [10. `mkdir`](#10-mkdir)
- [11. `touch`](#11-touch)
- [12. `nano`](#12-nano)
- [13. `apt`](#13-apt)
  - [`apt install`](#apt-install)
  - [`apt update`](#apt-update)
- [14. `curl`](#14-curl)

### 1. ls
- **Descripción**: Lista archivos y directorios en el directorio actual.
- **Ejemplo básico**: 
  ```bash
  ls
  ```
- **Ejemplo con parámetros**:
  ```bash
  ls -l
  ```
  (Muestra detalles como permisos, tamaño, y fecha de modificación)

---

### 2. cd
- **Descripción**: Cambia el directorio actual.
- **Ejemplo básico**:
  ```bash
  cd /home/usuario
  ```
- **Ejemplo con parámetros**: 
  ```bash
  cd ..
  ```
  (Sube al directorio padre)

---

### 3. `whoami`
- **Descripción**: Muestra el nombre del usuario actual.
- **Ejemplo básico**:
  ```bash
  whoami
  ```

---

### 4. `cat`
- **Descripción**: Muestra el contenido de un archivo.
- **Ejemplo básico**:
  ```bash
  cat archivo.txt
  ```
- **Ejemplo con parámetros**:
  ```bash
  cat archivo1.txt archivo2.txt > combinado.txt
  ```
  (Combina el contenido de varios archivos en uno nuevo)

---

### 5. `rm`
- **Descripción**: Elimina archivos o directorios.
- **Ejemplo básico**:
  ```bash
  rm archivo.txt
  ```
- **Ejemplo con parámetros**:
  ```bash
  rm -r directorio
  ```
  (Elimina un directorio de forma recursiva)

---

### 6. `> y >>`
- **Descripción**: `>` redirige la salida a un archivo (sobrescribiendo), `>>` lo hace pero sin sobrescribir (añade al final).
- **Ejemplo básico**:
  ```bash
  echo "Texto nuevo" > archivo.txt
  ```
- **Ejemplo con `>>`**:
  ```bash
  echo "Más texto" >> archivo.txt
  ```

---

### 7. `sudo`
- **Descripción**: Ejecuta comandos como superusuario (root).
- **Ejemplo básico**:
  ```bash
  sudo apt update
  ```

---

### 8. `useradd`
- **Descripción**: Crea un nuevo usuario.
- **Ejemplo básico**:
  ```bash
  sudo useradd nuevo_usuario
  ```
- **Ejemplo con parámetros**:
  ```bash
  sudo useradd -m -s /bin/bash nuevo_usuario
  ```
  (Crea un usuario con su propio directorio y asigna bash como su shell predeterminada)

---

### 9. `passwd`
- **Descripción**: Cambia la contraseña de un usuario.
- **Ejemplo básico**:
  ```bash
  passwd
  ```
  (Cambia la contraseña del usuario actual)
- **Ejemplo con parámetros**:
  ```bash
  sudo passwd nuevo_usuario
  ```
  (Cambia la contraseña de otro usuario)

---

### 10. `mkdir`
- **Descripción**: Crea un nuevo directorio.
- **Ejemplo básico**:
  ```bash
  mkdir nuevo_directorio
  ```
- **Ejemplo con parámetros**:
  ```bash
  mkdir -p carpeta1/carpeta2
  ```
  (Crea carpetas anidadas)

---

### 11. `touch`
- **Descripción**: Crea un archivo vacío o actualiza la fecha de modificación de un archivo.
- **Ejemplo básico**:
  ```bash
  touch nuevo_archivo.txt
  ```

---

### 12. `nano`
- **Descripción**: Abre un editor de texto en la terminal.
- **Ejemplo básico**:
  ```bash
  nano archivo.txt
  ```

---

### 13. `apt`
- **Descripción**: Comando para gestionar paquetes en distribuciones basadas en Debian.
  
  #### `apt install`
  - **Descripción**: Instala un paquete.
  - **Ejemplo**:
    ```bash
    sudo apt install curl
    ```

  #### `apt update`
  - **Descripción**: Actualiza la lista de paquetes.
  - **Ejemplo**:
    ```bash
    sudo apt update
    ```

---

### 14. `curl`
- **Descripción**: Herramienta para transferir datos desde o hacia un servidor.
- **Ejemplo básico**:
  ```bash
  curl http://example.com
  ```
- **Ejemplo con parámetros**:
  ```bash
  curl -O http://example.com/archivo.zip
  ```
  (Descarga un archivo)

---

Con esto tienes una breve descripción y ejemplos prácticos de cada comando. ¡Espero te sea útil!