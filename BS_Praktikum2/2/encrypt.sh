#!/bin/bash

for img in *.jpg; do
    if [ "$img" != "encrypt.sh" ] && [ "$img" != "restore.sh" ]; then
        echo "Encrypting $img..."
        
        # Verschlüsseln mit GPG unter Verwendung der Schlüssel-ID
        gpg --output "$img.gpg" --encrypt --recipient 48E9FC1CA79F4B609255DB3EE8BD11B412886BC3 "$img"
        
        # Löschen des Originalbildes
        rm "$img"
    fi
done

echo "Encryption process complete."
