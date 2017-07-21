ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[196]"
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[082]"

function get_pwd() {
  echo "${PWD/$HOME/~}"
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT='
$reset_color$(get_pwd)$reset_color$(parse_git_dirty)$(git_prompt_info)$reset_color:$FG[200]\$$reset_color '
