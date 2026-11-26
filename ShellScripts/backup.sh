
#!/bin/bash

# Author: Deepak Kumar
# Roll Number: 2601730444
# Purpose: Automated folder backup

if [ "$#" -ne 1 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

if [ ! -d "$SOURCE" ]; then
    echo "Error: Source folder does not exist: $SOURCE"
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

if tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then

    SIZE=$(du -h "$BACKUP_FILE" | awk '{print $1}')

    echo "Backup created successfully!"
    echo "Filename: $(basename "$BACKUP_FILE")"
    echo "Size: $SIZE"

    echo "$TIMESTAMP SUCCESS $(basename "$BACKUP_FILE") Size=$SIZE" >> "$BACKUP_DIR/backup.log"

else
    echo "Error: Backup creation failed."
    echo "$TIMESTAMP FAILED $SOURCE" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
