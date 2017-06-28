#!/usr/bin/env zsh

# Usage:
# Append this to the .zshrc file, then source it from on a terminal running zsh:
#   $ . zshrc.zsh

# disables Ctrl + Q / Ctrl + S flow control bindings.
# Works similarly to `stty -ixon`, but is a bit safer.
setopt NO_FLOW_CONTROL

# Set your default EDITOR tool. Replace `emacs` with `vi`, `subl`, etc.
export EDITOR='emacs'

# Key binds
# use emacs keybindings even if EDITOR is set to vi
bindkey -e

# this will bind CTRL + back/forward arrows navigation
bindkey ";5D" backward-word
bindkey ";5C" forward-word

# pushline for multiline editing
bindkey '^Q' push-line-or-edit

# Type some chars, use the UP-DOWN keys to filter history
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# EOF
