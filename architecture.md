🧱 System Architecture

This project treats a Linux desktop environment as a designed system, not a collection of tweaks.
Each layer has a clear responsibility, controlled boundaries, and intentional trade-offs.

The architecture follows a layered model, similar to how production systems are designed.

🧠 Architectural Overview

<p align="center">
  <img src="../images/architecture-diagram.png" alt="System Architecture Diagram" width="700">
</p>

Each layer is independent but cooperative, allowing customization without compromising stability.

🖥️ Layer 1: User Experience (UX)

Goal: Make the system feel premium, calm, and motivating.

WhiteSur GTK theme for macOS-style visuals

Rounded corners and left-positioned window controls

Transparent and blurred GNOME top bar

Dash-to-Dock configured for macOS-like behavior

macOS-style system and login sounds

📌 Key principle:
UX changes must never introduce boot delays or visual instability.

⚙️ Layer 2: Workflow & Productivity

Goal: Optimize daily developer workflows.

Terminal Stack

ZSH as primary shell

Oh-My-Zsh for plugin management

Starship prompt for fast, minimal, and informative UI

Productivity Enhancements

Autosuggestions, syntax highlighting, completions

Custom aliases and functions

tmux for multi-pane parallel workflows

Modern CLI Toolchain
Legacy	Modern	Purpose
ls	exa	Better file listing
cat	bat	Syntax-highlighted viewing
find	fd	Faster file search
grep	rg	High-performance text search

📌 Key principle:
Tools must improve speed without changing mental models.

📁 Layer 3: Configuration & Control

Goal: Ensure reproducibility and transparency.

Centralized dotfiles (.zshrc, .config, tmux config)

Version-controlled configuration

Minimal global state

Custom scripts for:

Dotfile backup

Restore and recovery

Login sound automation

📌 Key principle:
If it cannot be reproduced, it is not engineered.

🛡️ Layer 4: System Safety & Performance

Goal: Protect the system while enabling experimentation.

Safety

TimeShift snapshots (daily / weekly)

External drive backups

Manual verification of backup integrity

Performance

Startup analysis using systemd-analyze

Removal of unnecessary startup services

Measured impact of GDM and GNOME changes

Boot time optimized to ~20 seconds

Boot pipeline optimization GRUB (bootloader)

📌 Key principle:
Every visual improvement must justify its performance cost.

🔍 Trade-off Strategy

Some features were intentionally not implemented:

QuickLook (GNOME 46 limitations)

Heavy animation extensions

Dynamic wallpapers

Experimental preview tools

📌 Reason:
Startup speed, stability, and recoverability were prioritized over novelty.

🎯 Architectural Outcomes

This architecture enables:

Safe system-level experimentation

High daily productivity

Visual consistency

Fast recovery from failure

Long-term maintainability

Most importantly, it ensures the system remains reliable under continuous use.

🧩 Closing Note

This project demonstrates that desktop environments can be engineered with the same discipline applied to software systems — balancing UX, performance, safety, and maintainability through deliberate design.
