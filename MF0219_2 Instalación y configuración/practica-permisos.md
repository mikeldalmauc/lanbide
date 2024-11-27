- [2. **Crear archivos y modificar sus permisos:**](#2-crear-archivos-y-modificar-sus-permisos)
- [3. **Crear y modificar más archivos:**](#3-crear-y-modificar-más-archivos)
- [4. **Crear y ejecutar scripts:**](#4-crear-y-ejecutar-scripts)
- [5. **Cambiar permisos de forma recursiva:**](#5-cambiar-permisos-de-forma-recursiva)
- [1. **Marcar un archivo como inmutable (propiedad `i`)**](#1-marcar-un-archivo-como-inmutable-propiedad-i)
- [2. **Asignar la propiedad de archivo solo agregable (`a`)**](#2-asignar-la-propiedad-de-archivo-solo-agregable-a)
- [3. **Marcar un archivo como comprimido (propiedad `c`)**](#3-marcar-un-archivo-como-comprimido-propiedad-c)
- [4. **Hacer que los datos de un archivo se sobrescriban al eliminarlo (propiedad `s`)**](#4-hacer-que-los-datos-de-un-archivo-se-sobrescriban-al-eliminarlo-propiedad-s)


#### 1. **Conexión a la máquina remota:**

Los alumnos se conectarán al servidor mediante SSH:

```bash
ssh tu_usuario@192.168.108.208
```

Todo el trabajo se realizará dentro del directorio `/home/tu_usuario`.

---

#### 2. **Crear archivos y modificar sus permisos:**

**Objetivo:** Practicar la creación de archivos y asignar permisos básicos.

1. **Crear varios archivos en `/home/tu_usuario`:**
   ```bash
   touch archivo1.txt archivo2.txt archivo3.txt
   ```

2. **Cambiar permisos del archivo1:**
   - Solo el propietario puede leer y escribir, nadie más tiene acceso:

3. **Cambiar permisos del archivo2:**
   - El propietario tiene todos los permisos (lectura, escritura, ejecución), el grupo y otros solo pueden leer:

4. **Cambiar permisos del archivo3:**
   - Todos pueden leer y escribir el archivo:
- 
---

#### 3. **Crear y modificar más archivos:**


1. **Crear nuevos archivos y asignar permisos:**
   ```bash
   touch archivo4.txt archivo5.txt
   ```

2. **Cambiar permisos del archivo4:**
   - El propietario puede leer, escribir y ejecutar; el grupo puede leer y ejecutar; otros no tienen acceso:

3. **Cambiar permisos del archivo5:**
   - Todos pueden leer y ejecutar, pero solo el propietario puede escribir:
   - 
---

#### 4. **Crear y ejecutar scripts:**

**Objetivo:** Crear scripts y practicar permisos de ejecución.

1. **Crear un script en el directorio compartido:**
   ```bash
   touch mi_script.sh
   ```

2. **Añadir contenido al script:**
   ```bash
   /mi_script.sh
   ```

   Añade el siguiente contenido:

   ```bash
   #!/bin/bash
   echo "Hola, este es un script básico."
   ```

3. **Dar permisos de ejecución al script solo para el propietario:**

4. **Ejecutar el script:**
   ```bash
   ./mi_script.sh
   ```
    o
   ```bash
   bash mi_script.sh
   ```

---

#### 5. **Cambiar permisos de forma recursiva:**

**Objetivo:** Aplicar permisos recursivamente a directorios.

1. **Crear un directorio con varios archivos dentro:**

2. **Cambiar permisos de forma recursiva para todo el directorio:**
   - El propietario puede leer, escribir y ejecutar; el grupo y otros solo pueden leer y ejecutar:
  
---

Aquí tienes algunos ejercicios adicionales donde los alumnos practicarán la asignación de propiedades especiales a los archivos utilizando herramientas como `chattr` y `lsattr`, además de las propiedades comunes de los archivos en Linux. Esto incluye marcar archivos como inmutables, comprimidos, y más.

#### 1. **Marcar un archivo como inmutable (propiedad `i`)**

**Objetivo:** Hacer que un archivo no pueda ser modificado ni eliminado, ni siquiera por el usuario root.

1. **Crear un archivo de ejemplo:**
   ```bash
   touch inmutable.txt
   ```

2. **Asignar la propiedad inmutable:**
   - Usa el comando `chattr` para que el archivo no pueda ser modificado:
     ```bash
     sudo chattr +i inmutable.txt
     ```

3. **Verificar la propiedad inmutable:**
   - Usa `lsattr` para ver las propiedades especiales del archivo:
     ```bash
     lsattr inmutable.txt
     ```

4. **Intentar modificar o eliminar el archivo:**
   - Intenta editar el archivo con `nano` o eliminarlo, y observa el error:
     ```bash
     nano inmutable.txt
     rm inmutable.txt
     ```

5. **Eliminar la propiedad inmutable:**
   - Para eliminar la propiedad inmutable, usa el siguiente comando:
     ```bash
     sudo chattr -i inmutable.txt
     ```

---

#### 2. **Asignar la propiedad de archivo solo agregable (`a`)**

**Objetivo:** Hacer que un archivo solo pueda ser modificado añadiendo información al final, pero no puede ser modificado en su contenido actual.

1. **Crear un archivo de ejemplo:**
   ```bash
   touch solo_agregar.txt
   ```

2. **Asignar la propiedad `a` para que sea solo agregable:**
   ```bash
   sudo chattr +a solo_agregar.txt
   ```

3. **Verificar la propiedad `a`:**
   ```bash
   lsattr solo_agregar.txt
   ```

4. **Editar el archivo:**
   - Abre el archivo y trata de modificar el contenido existente (no te permitirá). Solo podrás añadir información al final:
     ```bash
     nano solo_agregar.txt
     ```

5. **Eliminar la propiedad `a`:**
   ```bash
   sudo chattr -a solo_agregar.txt
   ```

---

#### 3. **Marcar un archivo como comprimido (propiedad `c`)**

**Objetivo:** Hacer que un archivo se almacene comprimido en disco, de modo que ocupe menos espacio. Este es un atributo útil para archivos que no se modifican frecuentemente.

1. **Crear un archivo de ejemplo:**
   ```bash
   touch comprimido.txt
   ```

2. **Asignar la propiedad comprimida (`c`):**
   ```bash
   sudo chattr +c comprimido.txt
   ```

3. **Verificar la propiedad `c`:**
   ```bash
   lsattr comprimido.txt
   ```

4. **Comprobar la compresión al escribir en el archivo:**
   - Escribe algunos datos en el archivo y observa el espacio en disco utilizado. La compresión ocurre en segundo plano, por lo que no es inmediata:
     ```bash
     echo "Este es un archivo que se guardará comprimido." > comprimido.txt
     ```

5. **Eliminar la propiedad `c`:**
   ```bash
   sudo chattr -c comprimido.txt
   ```

---

#### 4. **Hacer que los datos de un archivo se sobrescriban al eliminarlo (propiedad `s`)**

**Objetivo:** Al eliminar un archivo con la propiedad `s`, los datos del archivo se sobrescriben con ceros, garantizando que no puedan ser recuperados.

1. **Crear un archivo de ejemplo:**
   ```bash
   touch seguro.txt
   ```

2. **Asignar la propiedad segura (`s`):**
   ```bash
   sudo chattr +s seguro.txt
   ```

3. **Verificar la propiedad `s`:**
   ```bash
   lsattr seguro.txt
   ```

4. **Eliminar el archivo y comprobar que los datos han sido sobrescritos:**
   - Al eliminar el archivo, sus datos se sobrescribirán y no serán recuperables:
     ```bash
     rm seguro.txt
     ```

---