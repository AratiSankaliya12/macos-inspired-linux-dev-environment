#!/usr/bin/env bash

# ============================================================
# Dotfiles Restore Script
# Safe restore with overwrite protection
# ============================================================

set -e

BACKUP_ROOT="$HOME/dotfiles-backup"

if [ ! -d "$BACKUP_ROOT" ]; then
  echo "❌ Backup directory not found: $BACKUP_ROOT"
  exit 1
fi

echo "Available backups:"
ls "$BACKUP_ROOT"
echo

read -p "Enter backup folder name to restore (YYYY-MM-DD_HH-MM-SS): " BACKUP_NAME
BACKUP_DIR="$BACKUP_ROOT/$BACKUP_NAME"

if [ ! -d "$BACKUP_DIR" ]; then
  echo "❌ Backup not found: $BACKUP_DIR"
  exit 1
fi

echo
echo "Restoring from: $BACKUP_DIR"
echo

RESTORE_ITEMS=(
  ".zshrc"
  ".tmux.conf"
  "zsh"
  "starship.toml"
)

for ITEM in "${RESTORE_ITEMS[@]}"; do
  SRC="$BACKUP_DIR/$ITEM"

  case "$ITEM" in
    ".zshrc") DEST="$HOME/.zshrc" ;;
    ".tmux.conf") DEST="$HOME/.tmux.conf" ;;
    "zsh") DEST="$HOME/.config/zsh" ;;
    "starship.toml") DEST="$HOME/.config/starship.toml" ;;
  esac

  if [ -e "$SRC" ]; then
    if [ -e "$DEST" ]; then
      echo "⚠ Backing up existing $DEST → $DEST.bak"
      mv "$DEST" "$DEST.bak"
    fi

    echo "✔ Restoring $ITEM"
    mkdir -p "$(dirname "$DEST")"
    cp -r "$SRC" "$DEST"
  else
    echo "✖ Skipping $ITEM (not found in backup)"
  fi

  echo
done

echo "Restore completed successfully."
echo "Restart your shell or tmux session to apply changes."
