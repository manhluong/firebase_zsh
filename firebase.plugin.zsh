function firebase_prompt_info() {
  local active_project=$(grep \"$(detect_firebase_project_root)\" ~/.config/configstore/firebase-tools.json | awk -F'[ ,]' '{print $2}')
  if [[ -n $active_project ]]; then
    echo "${ZSH_THEME_FIREBASE_PROMPT_PREFIX}$active_project${ZSH_THEME_FIREBASE_PROMPT_SUFFIX}"
  fi
}

function detect_firebase_project_root() {
  local project_root_path=$(pwd)
  while [[ "$project_root_path" != "" && ! -e "$project_root_path/firebase.json" ]]; do
    project_root_path=${project_root_path%/*}
  done
  echo "$project_root_path"
}

ZSH_THEME_FIREBASE_PROMPT_PREFIX="%{$fg_bold[yellow]%}fb:(%{$fg[magenta]%}"
ZSH_THEME_FIREBASE_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%} "
