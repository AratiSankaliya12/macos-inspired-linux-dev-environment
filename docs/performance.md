# ⚡ Performance & Boot Optimization

This document outlines how system performance was **measured, optimized, and validated** across the boot pipeline and runtime environment.

All changes were applied incrementally and verified to avoid regressions.

---

## 🎯 Goals

- Reduce overall boot time
- Eliminate unnecessary startup delays
- Preserve UI responsiveness
- Maintain system stability and recoverability

---

## 📊 Measurement Approach

Performance was measured using native Linux tools for accuracy.

**Tools used:**
- `systemd-analyze`
- `systemd-analyze blame`
- Manual reboot timing

Measurements were taken **before and after each optimization**.

---

## 🚀 Boot Optimization (Before)

**Initial state:**
- GRUB timeout: **10 seconds**
- OS probing enabled
- Visible GRUB menu
- Redundant startup services

**Impact:**
- Unnecessary waiting during boot
- Slower perceived startup
- Redundant OS scans despite single-OS setup

---

## 🔧 Bootloader Optimization (GRUB)

Since the system runs a **single operating system**, GRUB was optimized to remove avoidable overhead.

**Configuration changes:**
```bash
GRUB_DISABLE_OS_PROBER=true
GRUB_TIMEOUT_STYLE=hidden
GRUB_TIMEOUT=1
```

**Applied using:**
```bash
sudo update-grub
```

**Result:**

- Removed OS scanning
- Eliminated menu delay
- Reduced idle boot wait time

---

## ⚙️ systemd Startup Optimization

Startup services were analyzed to identify delays.

**Commands used:**
```bash
systemd-analyze
systemd-analyze blame
```

**Actions:**

- Reviewed slow services
- Disabled or deferred non-essential units
- Verified no critical services were impacted

## 📉 Boot Time Results

| State               | Boot Time     |
|---------------------|---------------|
| Before optimization | ~30 seconds   |
| After optimization  | ~20 seconds   |


📌 Improvement achieved via GRUB + systemd pipeline optimization.

---

## 🖥️ Login & Runtime Performance

- GDM customization initially increased login delay
- Impact was measured and mitigated
- Heavy GNOME extensions and animations were avoided
- Lightweight themes and effects were preferred

**Outcome:** visual improvements retained without noticeable slowdown.

---

## 🧪 Validation Process

Each optimization followed this cycle:
- Measure baseline
- Apply single change
- Reboot / reload
- Measure again
- Roll back if regression detected

---

## 🧠 Key Takeaways

- Performance gains achieved at multiple system layers
- Bootloader-level optimization (GRUB) played a key role
- All changes were measurable, reversible, and stable
- Faster boot improved both actual and perceived performance

---

## 🧠 Closing Note:
This project demonstrates that desktop performance optimization is most effective when treated as a measured system pipeline, not a collection of tweaks. 

Every improvement was intentional, validated, and reversible.
