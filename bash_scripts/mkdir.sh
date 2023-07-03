#!/bin/bash

folder_path="/content/working/source"

if [ ! -d "$folder_path" ]; then
    mkdir -p "$folder_path"
    echo "Folder created: $folder_path"
else
    echo "Folder already exists: $folder_path"
fi
