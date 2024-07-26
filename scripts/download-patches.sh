#!/usr/bin/env bash

# Check if URL is provided
if [ -z "$1" ] && [ -z "$2" ]; then
  echo "Usage: $0 <url> <destination>"
  exit 1
fi

# Get the URL from the first argument
URL=$1
DEST_DIR=$2

# Extract the filename from the URL
FILENAME=$(basename "$URL")

# Determine the destination directory relative to the script's location
SCRIPT_DIR="$(dirname "$0")"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Download the file using curl
curl -o "$DEST_DIR/$FILENAME" "$URL"
