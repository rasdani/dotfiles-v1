alias nv="nvim"
alias gs="git status"
alias gr='cd $(git rev-parse --show-toplevel)'
alias ipy="ipython"
alias tm="tmux"

function cl() {
    cd "$@" && l
  }
