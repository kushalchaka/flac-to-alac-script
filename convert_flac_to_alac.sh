#!/bin/bash

# Navigate to the folder containing the FLAC files
cd /directory/to/flac

# Create a directory to store the converted files (optional)
mkdir -p alac_files

# Loop through all FLAC files in the folder and convert them to ALAC
for file in *.flac; do
    ffmpeg -i "$file" -map 0:a -map 0:v -c:v copy -c:a alac "alac_files/${file%.flac}.m4a"
done
