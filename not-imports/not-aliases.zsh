#  for working completions
if (($+commands[doas])) then
  alias doas="doas " 
  alias _="doas"
elif (($+commands[sudo])) then
  alias sudo="sudo "
  alias _="sudo"
fi

# can be not "less"
alias pager=$PAGER
alias less=$PAGER

alias grep="grep --color"

if (($+commands[batcat])) then
  alias bat=" "
fi

if (($+commands[bat])) then
  alias cat="bat -pp"
  alias env="env | bat -l ini"
fi

if (($+commands[eza])) then
  alias ls="eza --smart-group --icons --no-permissions --octal-permissions --git --extended"
else
  alias ls="ls --color=auto"
fi

alias l="ls -l"
alias ll="ls -lah"

if [[ -v EDITOR ]] then
  alias e="$EDITOR"
elif (($+commands[editor])) then
  alias e=editor
else
  alias e="vi"
fi

alias rr=". ~/.zshrc"
alias er="e ~/.zshrc"
alias ea="e ~/.not-dotfiles/not-imports/not-aliases.zsh"
alias eb="e ~/.not-dotfiles/not-imports/not-aliases.zsh"
alias _e="_ e"
alias ip="ip -c"
alias cp="rsync -ah --no-whole-file --info=progress2"

# git
source ~/.not-dotfiles/not-imports/not-aliases/not-git.zsh

if (($+commands[yq])) then
  alias jq="yq"
fi

## gentoo-specific
source ~/.not-dotfiles/not-imports/not-aliases/not-gentoo/not-portage.zsh

  ujq() {
    echo -en $(cat $1) | jq
  }

# weird cmd-style binds (for lulz)
alias CD="cd"
alias "cd.."="cd.."
alias CD..=".."
alias md="mkdir"
alias MD="md"
alias cls="clear"

alias hakirfedtch='neofetch --ascii_distro Kali | sed "s/Gentoo/Kali/g" | sed "s/gentoo/kali/g" | sed "s/emerge/stolen user passports/g" | sed "s/dist/zen/"'

unicode-unescape() {
  echo -en $(cat $1)
}

# Prevent zsh corrections
alias dotnet='nocorrect dotnet'
alias eselect='nocorrect eselect'
alias whereis='nocorrect whereis'
