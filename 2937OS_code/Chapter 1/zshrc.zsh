#!/usr/bin/env zsh

# source this from a terminal running zsh:
#   % . zshrc.zsh

# load the prompt module
autoload -Uz promptinit
promptinit

setopt INTERACTIVE_COMMENTS # enables interactive comments
setopt PROMPT_SUBST         # enables escape sequence parsing on the prompt

HISTSIZE=1000               # amount of lines the shell will keep between sessions
SAVEHIST=1000               # amount of lines the shell will save to disk
HISTFILE=~/.zsh_history     # sets the location of the shell´s history file

# sets our custom prompts
PS1="%K{yellow}%n%k@%m:%~/ > "
PS2="> "

# right-hand prompt with exit status code
RPS1="%(?..(%?%))"

# EOF
