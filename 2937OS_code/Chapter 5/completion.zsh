#!/usr/bin/env zsh

# source this file from .zshrc
# [[ -f ~/.completion.zsh ]] && source ~/.completion.zsh

autoload -Uz compinit
compinit

# Mute beeps on abiguous completion
unsetopt LIST_BEEP

zstyle ':completion::complete:*' use-cache on

# Format completion output messages.
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format %d
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' verbose yes

# Types of completion to be performed.
zstyle ':completion:*' completer _expand _complete _correct _approximate

# Allow one error for every three characters typed.
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'

# Ignore current dir when completing cd command.
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# Hide slashes from directory names after a successful completion.
zstyle ':completion:*' squeeze-slashes true

# EOF
