#!/bin/bash
set -e

REPO_URL="https://github.com/yourusername/tmux-start-ui.git"
INSTALL_DIR="$HOME/.tmux-start-ui"

echo "Cloning tmux-start-ui to $INSTALL_DIR..."
if [ -d "$INSTALL_DIR" ]; then
    echo "Directory $INSTALL_DIR already exists. Updating..."
    cd "$INSTALL_DIR" && git pull
else
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

echo "Adding source-file to ~/.tmux.conf..."
# Ensure ~/.tmux.conf exists
touch "$HOME/.tmux.conf"

if ! grep -q "source-file $INSTALL_DIR/tmux.conf" "$HOME/.tmux.conf"; then
    echo "" >> "$HOME/.tmux.conf"
    echo "source-file $INSTALL_DIR/tmux.conf" >> "$HOME/.tmux.conf"
    echo "Added source-file to ~/.tmux.conf"
else
    echo "Already sourced in ~/.tmux.conf"
fi

echo "Reloading tmux configuration..."
if pgrep tmux >/dev/null; then
    tmux source-file "$HOME/.tmux.conf"
    echo "Tmux configuration reloaded!"
else
    echo "Tmux is not running. Configuration will be loaded next time you start tmux."
fi

echo "Installation complete!"
