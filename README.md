# macOS-Inspired Linux Developer Environment 💻

Most people customize Linux. Very few engineer it.

This project shows how I designed a macOS-inspired Ubuntu developer environment by making deliberate trade-offs between performance, stability, UX, and system safety.

---
## Preview 🖼️

### Desktop
<img width="1920" height="1080" alt="Desktop" src="https://github.com/user-attachments/assets/75442437-27fd-4e50-b53e-a4b550db0b29" />

### Transperent Terminal
<img width="1920" height="1080" alt="Transperent Terminal" src="https://github.com/user-attachments/assets/d5c1a6d1-330e-43ab-ae89-0371ae0cddaf" />

### Terminal Demo
<img width="1354" height="1078" alt="Terminal Demo" src="https://github.com/user-attachments/assets/20de3f1d-af78-48e3-8f63-ae44d28dd6b1" />

---

## 🎯 Why This Project?

Instead of random customization, I asked:

- How can Linux feel premium without becoming fragile?
- How can modern CLI tools safely replace legacy commands?
- How can customization coexist with performance and recovery?

---

## 🛠️ What I Built

**Terminal & Workflow**
- ZSH + Oh-My-Zsh with Starship prompt
- Autosuggestions, syntax highlighting, completions
- Custom aliases, functions, and startup identity message

**Modern CLI Toolchain**
- `exa` → improved `ls`
- `bat` → syntax-highlighted `cat`
- `fd` → fast file search
- `ripgrep` → high-performance text search

**System UI**
- WhiteSur GTK theme (macOS-style)
- Rounded corners, left-side window controls
- Transparent & blurred GNOME top bar
- Dash-to-Dock configured for macOS-like behavior

**Safety & Reliability**
- TimeShift snapshots
- Custom dotfile backup scripts
- External drive backups

---

## ⚙️ Design Principles

- Performance first (avoided heavy GNOME extensions)
- Stability over novelty
- Reproducible setup via versioned dotfiles
- Backups before and after system changes

---

## 🚀 Performance Highlights

- Boot time optimized to ~20 seconds
- Boot pipeline optimized (GRUB + systemd) for single-OS startup
- Startup services audited with `systemd-analyze`
- Login delay measured and corrected after GDM customization

---

## 🧠 Trade-offs & Decisions

- Skipped QuickLook due to GNOME 46 limitations
- Avoided heavy animation extensions
- Prioritized speed and stability over visual gimmicks

---

## 🧩 Skills Demonstrated

- Linux system internals
- Shell scripting (Bash/ZSH)
- Performance profiling & optimization
- UX-driven system design
- Configuration management & documentation
