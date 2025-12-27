#!/usr/bin/env bash

# ============================================================
# Dotfiles Backup Script
# Safe, timestamped backup of critical configuration files
# ============================================================

set -e

BACKUP_ROOT="$HOME/dotfiles-backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="$BACKUP_ROOT/$TIMESTAMP"

echo "Backup root: $BACKUP_ROOT"
echo "Backup directory: $BACKUP_DIR"
echo

mkdir -p "$BACKUP_DIR"

FILES_TO_BACKUP=(
  "$HOME/.zshrc"
  "$HOME/.tmux.conf"
  "$HOME/.config/zsh"
  "$HOME/.config/starship.toml"
)

for ITEM in "${FILES_TO_BACKUP[@]}"; do
  echo "Checking: $ITEM"
  if [ -e "$ITEM" ]; then
    cp -r "$ITEM" "$BACKUP_DIR"
    echo "✔ Backed up"
  else
    echo "✖ Not found, skipped"
  fi
  echo
done

echo "Backup completed."
