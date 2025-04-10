#!/bin/sh

# Configurações
DB_HOST="$POSTGRES_HOST"
DB_USER="$POSTGRES_USER"
DB_NAME="$POSTGRES_DB"
BACKUP_DIR="/backups"
DATE=$(date +"%Y-%m-%d_%H-%M")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.sql.gz"

# Exportar senha para evitar prompt do pg_dump
export PGPASSWORD=$POSTGRES_PASSWORD

pg_dump -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME"| gzip > "$BACKUP_FILE"

echo "Backup criado: $BACKUP_FILE" >> /var/log/backup.log
