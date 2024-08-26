parse_git_branch() {
  local branch=${GITSTATUS_PROMPT}

  if [[ -n "$branch" ]]; then
    branch=%F{yellow}[%F{magenta}${branch}%F{green}%F{yellow}]
    echo "$branch "
  fi
}

venv_info() {
  if [[ -n $VIRTUAL_ENV ]]; then
    local venv=%F{yellow}$VIRTUAL_ENV_PROMPT
    echo "$venv"
  fi
}

update_prompt() {
  PS1="$(venv_info)%(!.%F{red}superuser.%F{green}%n) %F{cyan}%(5~|%-1~/…/%2~|%3~) $(parse_git_branch)%(!.%F{red}#.%F{magenta}％) %b%f%k"
}

precmd_functions+=(update_prompt)
update_prompt
