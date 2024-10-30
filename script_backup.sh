#!/bin/bash

# Ruta de destino del backup
BACKUP_TARGET="/home"
BACKUP_DIR="/mnt/backup/home"
LOG_FILE="$BACKUP_DIR/backup.log"


rsync -aAXv "$BACKUP_TARGET" "$BACKUP_DIR" > "$LOG_FILE" 2>&1
