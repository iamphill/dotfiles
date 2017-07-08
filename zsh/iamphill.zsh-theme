function get_pwd() {
  echo "${PWD/$HOME/~}"
}

ZSH_THEME_GIT_PROMPT_DIRTY="$FG[196]"
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[082]"

PROMPT='
$reset_color$FG[199]$(get_pwd) $reset_color$(parse_git_dirty)$(current_branch)$reset_color
⚡  → '
