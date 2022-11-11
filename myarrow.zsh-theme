NCOLOR="cyan"
RCOLOR="magenta"

function git_root() {
  basename $(git rev-parse --show-toplevel 2> /dev/null) 2> /dev/null
  }

PROMPT='%{$fg[$NCOLOR]%}%2d ➤ %{$reset_color%}'
RPROMPT='%{$fg[$RCOLOR]%} $(git_root)$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=":"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""


# See https://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

