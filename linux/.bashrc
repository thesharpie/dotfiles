#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export QT_QPA_PLATFORMTHEME=qt5ct


# My Custom Alias
alias c='clear'
alias e='exit'
alias pacman='sudo pacman'
alias update='sudo pacman -Syu'
alias la='ls -a'
alias sound='pavucontrol'
alias nv='nvim'
alias snv='sudo nvim'
alias cs='clear;ls'
alias ca='clear;ls -a'
alias p='bat'
alias q='exit'
alias TooD='cd ~/Documents/Projects/Too-D/'
alias py='python'
alias pi='TERM=xterm ssh icebox@192.168.1.143'

# git alias
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gs='git status'
alias gp='git push'

alias spotify='spotify-launcher'
alias bluetooth='blueman-manager'
alias hypr='start-hyprland'
alias fastfetch='clear;fastfetch'
alias hytale='setsid flatpak run com.hypixel.HytaleLauncher >/dev/null 2>&1 &'
alias vintage_story='setsid flatpak run at.vintagestory.VintageStory >/dev/null 2>&1 &'

eval $(thefuck --alias)

export PATH="$HOME/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(zoxide init bash)"
eval "$(starship init bash)"

. "$HOME/.local/bin/env"

. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

# pnpm
export PNPM_HOME="/home/patty/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
