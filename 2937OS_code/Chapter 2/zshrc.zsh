#!/usr/bin/env zsh

# Usage:
# source this from a terminal running zsh:
#   % . zshrc.zsh

# This expands on Chapter 1's file, adding new entries.

setopt INTERACTIVE_COMMENTS # enables interactive comments
setopt PROMPT_SUBST         # enables escape sequence parsing on the prompt

# ** Alias **
setopt COMPLETE_ALIASES     # autocompletion for defined aliases

# ** History **
setopt EXTENDED_HISTORY     # save timestamp and duration for each command
setopt HIST_VERIFY          # make newline show the change before executing it
setopt HIST_IGNORE_SPACE    # ignore lines which start with space
setopt HIST_IGNORE_ALL_DUPS # ignore duplicates
setopt HIST_FIND_NO_DUPS    # do not display duplicates for a found line
setopt HIST_REDUCE_BLANKS   # trim extra blanks from history lines
setopt INC_APPEND_HISTORY   # incremental append, don't wait until shell exits
setopt SHARE_HISTORY        # share history between zsh processes

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# ** alias definitions **
# PLEASE NOTE that some of this might not work on a default installation of OS X.
# The recommended way of ensuring compatibility is to use the `coreutils` package,
#   which contains ports of said GNU utils.
# ** alias definitions **
# colorful output for vanilla utils
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -al'

alias ..='cd ..'
alias ...='cd ../..'

# print a random integer...
alias rand='echo $RANDOM'

# `mkdir` will create parent dirs as needed and be verbose about it.
alias mkd='mkdir -pv'

# load the prompt module
autoload -Uz promptinit && promptinit

# sets the custom prompt
PS1="%K{yellow}%n%k@%m:%~/ > "
PS2="> "
RPS1="%(?..(%?%))"

# EOF
