#!/bin/bash

folder_path="/content/drive/MyDrive/Colab\ Notebooks/UNF_Fysik_Camp"

if [ ! -d "$folder_path" ]; then
    mkdir -p "$folder_path"
    echo "Folder created: $folder_path"
else
    echo "Folder already exists: $folder_path"
fi

cd /content/working

ls | grep -E '.ipynb' | while read -r file; do
  cp "$file" "$folder_path/$new_filename"
done

echo "Files copied to: $folder_path"