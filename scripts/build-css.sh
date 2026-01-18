#!/bin/bash

# Define variables
TAILWIND_VERSION="v3.4.1"
PLATFORM="linux-x64"
BINARY_NAME="tailwindcss-$PLATFORM"
DOWNLOAD_URL="https://github.com/tailwindlabs/tailwindcss/releases/download/$TAILWIND_VERSION/$BINARY_NAME"
BINARY_PATH="./scripts/tailwindcss"

# Download Tailwind CSS standalone CLI if not exists
if [ ! -f "$BINARY_PATH" ]; then
    echo "Downloading Tailwind CSS Standalone CLI..."
    curl -sL "$DOWNLOAD_URL" -o "$BINARY_PATH"
    chmod +x "$BINARY_PATH"
    echo "Download complete."
fi

# Build CSS
echo "Building CSS..."
$BINARY_PATH -i ./assets/css/src/input.css -o ./assets/css/style.css "$@"
