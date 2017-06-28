#!/usr/bin/env zsh

# Sample functions file.
# This can be either sourced from .zshrc or called via:
#   source ~/functions.zsh
# Change the file path accordingly if not placed in $HOME.

# This function will print "Hello, World!"
hi() {
    print 'Hello, World!'
}

# This is called from the _meet() function and
#   has the same effect as above.
_greet() {
    echo 'Hello, World!'
}

# This will call _greet() and print a salute
#   with the passed parameters.
# Usage: meet "John Smith"
_meet() {
    _greet
    echo "Ohai there $@"
}

_meet "$@"

# EOF
