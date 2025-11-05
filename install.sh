#!/bin/sh

# Directory to link from (current directory)
SRC_DIR="$(pwd)"

# Directory to link to
DEST_DIR="/usr/bin"

for file in "$SRC_DIR"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if [ "$filename" = "install.sh" ] || [ "$filename" = "uninstall.sh" ]; then
            continue
        fi
        sudo ln -sf "$file" "$DEST_DIR/$filename"
        echo "Linked $file to $DEST_DIR/$filename"
    fi
done