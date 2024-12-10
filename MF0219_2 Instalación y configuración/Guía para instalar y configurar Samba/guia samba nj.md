🚀 Guía de Instalación y Configuración de Samba

## 🔧 Instalación

### 🐧 En sistemas Debian/Ubuntu
```bash
sudo apt update
sudo apt install samba
```
![alt text](<Captura de pantalla 2024-12-02 194153.png>)
![alt text](<Captura de pantalla 2024-12-02 194844.png>)
### 🖥️ En sistemas Red Hat/CentOS
```bash
sudo yum install samba
```

## ⚙️ Configuración Básica

1. 📝 Editar configuración:
```bash
sudo nano /etc/samba/smb.conf
```

2. 📁 Configurar recurso compartido:
```
[NombreCompartido]
path = /ruta/al/directorio
browseable = yes
read only = no
valid users = usuario
```
![alt text](<Captura de pantalla 2024-12-03 155741.png>)
![alt text](<Captura de pantalla 2024-12-03 155810.png>)
3. 👤 Crear usuario Samba:
```bash
sudo smbpasswd -a nombreusuario
```
![alt text](<Captura de pantalla 2024-12-03 155936.png>)
4. 🔌 Iniciar servicio:
```bash
sudo systemctl start smbd
sudo systemctl enable smbd
```

*El servicio se llama smb en arch linux.*
![alt text](<Captura de pantalla 2024-12-03 160051.png>)
5. 🛡️ Configurar firewall:

*No es necesario en arch linux.*

```bash
sudo ufw allow samba
```
![alt text](<Captura de pantalla 2024-12-03 160527.png>)
## 🔒 Seguridad
- 🔐 Contraseñas seguras
- 🚪 Limitar accesos
- 👥 Autenticación de usuarios

## 🕵️ Verificación
```bash
testparm
```
![alt text](<Captura de pantalla 2024-12-03 160621.png>)
🔄 Reiniciar servicio:
```bash
sudo systemctl restart smbd
```

