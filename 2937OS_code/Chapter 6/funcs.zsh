# Put here all helper functions for your zsh

# A simple function to `cd` and `ls`
# calls `cd`, and immediately list a directory's contents
cs () {
    cd "$@" && ls -A
}

# EOF
