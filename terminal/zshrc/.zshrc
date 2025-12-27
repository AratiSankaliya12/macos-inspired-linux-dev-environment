# ============================================================
# ZSH Configuration
# Engineered for productivity, performance, and clarity
# ============================================================

# ----------------------------
# Oh My Zsh
# ----------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# ----------------------------
# Plugins (kept minimal for speed)
# ----------------------------
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

source "$ZSH/oh-my-zsh.sh"

# ----------------------------
# Shell Behavior
# ----------------------------
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

# ----------------------------
# Startup Identity
# ----------------------------
echo "Built by Arati. Inspired by ambition. Fueled by purpose."

# ----------------------------
# Prompt (Starship)
# ----------------------------
# Starship is used instead of heavy ZSH themes
eval "$(starship init zsh)"

# ----------------------------
# Modern CLI Defaults
# ----------------------------
alias ls='exa -lah --color=always --icons'
alias cat='batcat'
alias fd='fdfind'

# ----------------------------
# Aliases (External)
# ----------------------------
# Keep workflow aliases separate for clarity
if [ -f "$HOME/.config/zsh/aliases.zsh" ]; then
  source "$HOME/.config/zsh/aliases.zsh"
fi

# ----------------------------
# Node Version Manager (NVM)
# ----------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# ----------------------------
# Conda (Optional / Disabled by Default)
# ----------------------------
# Conda initialization is intentionally disabled here
# to avoid shell startup slowdown and tight coupling.
#
# Enable locally if required, but keep it out of version control.
#
# >>> conda initialize >>>
# eval "$(/path/to/conda shell.zsh hook)"
# <<< conda initialize <<<
