#!/usr/bin/env bash

# ============================================================
# GNOME Login Sound Script
# Plays a short sound once at user login
# ============================================================

SOUND_FILE="$HOME/.local/share/sounds/login.oga"

if [ -f "$SOUND_FILE" ]; then
  paplay "$SOUND_FILE" &
fi
