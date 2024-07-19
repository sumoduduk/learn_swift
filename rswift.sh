#!/bin/bash

argument="$1"
file="./Sources/$argument.swift"

if [ -f "$file" ]; then
    docker run -v "$(pwd)":/app -it --workdir /app swift swift "$file"
else
    echo "Error: File '$file' not found."
fi
