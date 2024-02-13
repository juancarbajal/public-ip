#!/bin/bash

# Build script for a Go project

# Set the project's root directory (where go.mod resides)
PROJECT_ROOT_DIR="."

# Set the output directory for built executables
OUTPUT_DIR="./build"

# Create the output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# List of applications to build (relative to $PROJECT_ROOT_DIR)
APPS=("cmd/publicip")

# Build each application
for app in "${APPS[@]}"; do
    app_name=$(basename $app)
    echo "Building $app_name..."
    GOOS=windows GOARCH=amd64 go build -o "$OUTPUT_DIR/$app_name.exe" "$PROJECT_ROOT_DIR/$app/main.go"
done

echo "Build complete."
