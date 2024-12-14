parse_git_branch() {
  local branch=${GITSTATUS_PROMPT}

  if [[ -n "$branch" ]]; then
    branch=%F{yellow}[%F{magenta}${branch}%F{green}%F{yellow}]
    echo "$branch "
  fi
}

get_hostname() {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo "%F{red}[ %F{magenta}%m %F{red}] "
  fi
}

venv_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    local venv=%F{yellow}${VIRTUAL_ENV_PROMPT:-$(basename $VIRTUAL_ENV)}
    echo "$venv "
  fi
}

update_prompt() {
  PS1="$(venv_info)$(get_hostname)%(!.%F{red}superuser.%F{green}%n) %F{cyan}%(5~|%-1~/…/%2~|%3~) $(parse_git_branch)%(!.%F{red}#.%F{magenta}$) %b%f%k"
}

precmd_functions+=(update_prompt)
update_prompt
