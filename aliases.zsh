alias nv="nvim"
alias gs="git status"
alias gr='cd $(git rev-parse --show-toplevel)'
alias ipy="ipython"
alias tm="tmux"
alias mysync="rsync -ah --partial --info=progress2"
alias l="ls -a"

function cl() {
    cd "$@" && l
  }
