#!/data/data/com.termux/files/usr/bin/bash

# Stop on error
set -e

# Check if node_modules folder exists
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    npm install
fi

# Run build and start the bot
echo "Building the project..."
npm run build:run

# Pause (like Windows pause)
read -p "Press Enter to exit..."
