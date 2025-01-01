#! /bin/bash

# SCRIPT PARA REALIZAÇÃO DE BACKUPS DE ARQUIVOS | SCRIPT FOR PERFORMING FILE BACKUP

backup_dir="backupFrom_PATH"

if [ -e backup_dir ]; then
# backup name
backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$file_name" "backup_dir"

echo "Successful backup in $backup_name"

else

echo "Path '$backup_dir' doesn't exist"

fi
