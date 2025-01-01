#! /bin/bash

# SCRIPT PARA REALIZAÇÃO DE BACKUPS DE ARQUIVOS | SCRIPT FOR PERFORMING FILE BACKUP

backup_dir = "dir_PATH"

# backup name
backup_name = "backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$file_name" "backup_dir"

echo "Successful backup in $backup_name"
