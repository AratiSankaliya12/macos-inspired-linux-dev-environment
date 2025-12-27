# 🧠 Design Decisions

This document explains the **key design choices** made throughout the project and why specific approaches were chosen over common alternatives.

The focus was on **stability, performance, and long-term maintainability**, not novelty.

---

## 🎯 Guiding Principles

- Prefer reliability over visual gimmicks
- Optimize for daily, long-term usage
- Choose tools with predictable behavior
- Avoid changes that increase recovery complexity

---

## 🖥️ Shell & Terminal

### ZSH over Bash
**Chosen because:**
- Better interactive experience
- Strong plugin ecosystem
- High customizability with minimal overhead

**Not chosen:**
- Fish shell (non-POSIX behavior, portability concerns)

---

### Starship Prompt over Heavy Themes
**Chosen because:**
- Fast, language-agnostic prompt
- Minimal startup latency
- Declarative configuration

**Not chosen:**
- Powerlevel10k (heavier setup, more runtime complexity)

---

## ⚙️ CLI Tooling

### Modern CLI Tools over GNU Defaults
**Chosen because:**
- Faster execution
- Improved readability
- Better defaults for daily use

| Legacy | Replacement | Reason |
|------|-------------|--------|
| `ls` | `exa` | Clearer output |
| `cat` | `bat` | Syntax highlighting |
| `find` | `fd` | Speed and simplicity |
| `grep` | `rg` | Performance at scale |

**Not chosen:**
- Aliasing without understanding behavior differences

---

## 🧩 Workflow Management

### tmux over Multiple Terminal Windows
**Chosen because:**
- Session persistence
- Low resource usage
- Efficient keyboard-driven workflows

**Not chosen:**
- GUI-based split tools (higher overhead, less portable)

---

## 🎨 UI & Desktop Customization

### GTK Theming over Shell Patching
**Chosen because:**
- Safer upgrades
- Lower breakage risk
- GNOME-compatible approach

**Not chosen:**
- Deep shell modifications (high maintenance cost)

---

### Selective GNOME Extensions
**Chosen because:**
- Minimal performance impact
- Predictable behavior across updates

**Not chosen:**
- Heavy animation or experimental extensions

---

## ⚡ Performance Strategy

### Measured Optimization over Blind Tweaks
**Chosen because:**
- Prevents regressions
- Enables rollback
- Produces verifiable improvements

**Not chosen:**
- Unmeasured performance tuning

---

### GRUB Optimization for Single-OS Setup
**Chosen because:**
- Eliminates unnecessary boot delay
- Matches actual system configuration

**Not chosen:**
- Multi-OS defaults not applicable to this system

---

## 🛡️ Safety & Recovery

### TimeShift Snapshots over Manual Backups Only
**Chosen because:**
- Reliable system rollback
- Low cognitive overhead during recovery

**Not chosen:**
- Risky experimentation without snapshots

---

### Version-Controlled Dotfiles
**Chosen because:**
- Reproducibility
- Easy recovery
- Transparent change history

**Not chosen:**
- Untracked or ad-hoc configuration changes

---

## 🎯 Final Takeaway

Every design decision in this project was driven by **measured impact, system safety, and long-term usability**.

This approach ensures the system remains:
- Fast
- Stable
- Recoverable
- Maintainable

even under continuous daily use.

