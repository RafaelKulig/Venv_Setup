#!/usr/bin/env bash

PROJECT_DIR="$HOME/py"
cd "$PROJECT_DIR" || exit 1

VENV_NAME="$1"

# Check if there is a valid argument
if [ -z "$VENV_NAME" ]; then
    echo "Error: please, include venv name." >&2
    SCRIPT_NAME=$(basename "$0")
    echo "Use: $SCRIPT_NAME venv_name"
    exit 1
fi

VENV_PATH="$PROJECT_DIR/$VENV_NAME"

if [ -d "$VENV_PATH" ]; then
    echo "Virtual environment '$VENV_NAME' already exists."
    read -p "Do you want to remove it? (y/N) " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        rm -rf "$VENV_PATH"
        echo "Virtual environment removed."
    else
        echo "Aborted."
        exit 1
    fi
else
    echo "Creating virtual environment '$VENV_NAME'"
    python3 -m venv "$VENV_NAME"
    echo "Virtual environment created."
    echo "To activate it: source \"$VENV_NAME/bin/activate\""
fi
