En Windows, además de desfragmentar el disco, hay varias operaciones que puedes realizar para limpiar y optimizar el sistema de archivos, mejorar el rendimiento y liberar espacio en el disco duro. Aquí te dejo algunas de las más comunes:

### 1. **Liberar espacio en disco (Herramienta de Liberador de espacio en disco)**
   - Windows incluye una herramienta llamada "Liberador de espacio en disco" que permite eliminar archivos temporales, cachés, registros y otros archivos innecesarios.
   - Para usarlo:
     - Abre el **Explorador de archivos**.
     - Haz clic derecho en la unidad que quieres limpiar (por ejemplo, C:).
     - Selecciona **Propiedades** y luego haz clic en **Liberar espacio**.
     - En la ventana del Liberador de espacio en disco, selecciona los tipos de archivos que deseas eliminar, como archivos temporales, archivos de sistema, caché, etc.

### 2. **Eliminar archivos temporales y cachés manualmente**
   A veces, los archivos temporales pueden acumularse y ocupar espacio innecesario:
   - **Archivos temporales de Windows**: Abre la ventana de ejecución (presionando `Windows + R`), escribe `temp` y presiona **Enter**. Esto abrirá la carpeta con archivos temporales. Puedes eliminar todo lo que hay allí.
   - **Archivos temporales del sistema**: Abre de nuevo la ventana de ejecución (`Windows + R`), escribe `%temp%` y presiona **Enter**. De nuevo, elimina los archivos de esta carpeta.
   - **Caché del navegador**: Si usas navegadores como Chrome, Edge o Firefox, limpia su caché de forma periódica para evitar que se acumulen datos innecesarios.

### 3. **Eliminar puntos de restauración del sistema antiguos**
   Si no necesitas puntos de restauración antiguos (por ejemplo, si ya tienes una restauración reciente), puedes eliminarlos para liberar espacio:
   - Ve a **Panel de control** > **Sistema y seguridad** > **Sistema** > **Protección del sistema**.
   - En la pestaña **Protección del sistema**, selecciona la unidad y haz clic en **Configurar**.
   - Luego, haz clic en **Eliminar** para eliminar puntos de restauración antiguos.

### 4. **Limpiar archivos de hibernación**
   Si no usas la función de hibernación de Windows, puedes desactivar y eliminar el archivo de hibernación (`hiberfil.sys`), que puede ocupar varios gigabytes de espacio.
   - Abre una ventana de **Símbolo del sistema** con privilegios de administrador.
   - Escribe el siguiente comando para deshabilitar la hibernación:
     ```bash
     powercfg -h off
     ```
   - Esto eliminará el archivo `hiberfil.sys` de tu sistema.

### 5. **Limpiar la base de datos de archivos de Windows (Reindexar)**
   Si tienes problemas con la búsqueda de archivos, puedes limpiar la base de datos de la búsqueda de Windows (el índice) y permitir que se reindexe:
   - Abre el **Panel de control** y selecciona **Opciones de indización**.
   - Haz clic en **Avanzado** y luego selecciona la opción de **Reconstruir** el índice.

### 6. **Desinstalar programas innecesarios**
   A menudo, los programas que ya no usas pueden seguir ocupando espacio en el disco duro:
   - Ve a **Configuración** > **Aplicaciones** > **Aplicaciones y características**.
   - Revisa la lista y desinstala las aplicaciones que ya no necesitas.

### 7. **Limpiar el registro de Windows**
   El registro de Windows puede llenarse de entradas obsoletas con el tiempo, lo que puede afectar el rendimiento. Aunque las herramientas de limpieza de registro no siempre son recomendadas por todos (ya que pueden causar problemas si no se usan correctamente), hay herramientas de terceros confiables como **CCleaner** que pueden ayudar a limpiar entradas innecesarias del registro.

### 8. **Revisar y eliminar archivos duplicados**
   Los archivos duplicados pueden ocupar mucho espacio sin que te des cuenta. Existen herramientas como **Duplicate Cleaner** o **CCleaner** que pueden escanear tu disco duro en busca de archivos duplicados y permitirte eliminarlos.

### 9. **Actualizar y mantener el sistema con herramientas de optimización**
   Existen herramientas nativas y de terceros que pueden ayudarte a realizar un mantenimiento regular en tu sistema, como la **Herramienta de optimización de inicio** o herramientas de optimización de rendimiento (por ejemplo, **Advanced SystemCare** o **Glary Utilities**).

### 10. **Comprobar errores en el disco duro (CHKDSK)**
   A veces los problemas de fragmentación o corrupción pueden causar lentitud en el sistema. Usar **CHKDSK** (Check Disk) puede ayudarte a verificar y corregir problemas en el sistema de archivos:
   - Abre el **Símbolo del sistema** como administrador.
   - Escribe el siguiente comando para revisar y reparar errores en el disco:
     ```bash
     chkdsk C: /f
     ```
   - Si se te pide reiniciar el sistema, acepta para que el proceso se ejecute en el arranque.

### 11. **Restablecer el sistema (opcional)**
   Como último recurso, puedes realizar un **restablecimiento de Windows**, que restaurará el sistema a su estado de fábrica (sin afectar tus archivos personales si eliges esa opción). Esto puede ser útil si el sistema está muy desordenado o afectado por malware.

Con estas acciones, puedes liberar espacio, mejorar el rendimiento y mantener tu sistema de archivos en buen estado en Windows. Si no estás seguro de alguna operación, es una buena práctica hacer un **respaldo de tus datos importantes** antes de realizar cambios significativos.