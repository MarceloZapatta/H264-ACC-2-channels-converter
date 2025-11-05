#!/bin/sh

# Directory to unlink from (destination directory)
DEST_DIR="/usr/bin"

# Directory to check for files (current directory)
SRC_DIR="$(pwd)"

for file in "$SRC_DIR"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if [ "$filename" = "install.sh" ] || [ "$filename" = "uninstall.sh" ]; then
            continue
        fi
        if [ -L "$DEST_DIR/$filename" ] && [ "$(readlink -- "$DEST_DIR/$filename")" = "$file" ]; then
            sudo rm -f "$DEST_DIR/$filename"
            echo "Removed symlink $DEST_DIR/$filename"
        fi
    fi

done
