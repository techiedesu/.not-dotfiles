if (($+commands[doas])) then
  alias doas="doas "                      #  for working coplitions
  alias _="doas"
elif (($+commands[sudo])) then
  alias sudo="sudo "
  alias _="sudo"
fi

alias pager=$PAGER                                      # can be not "less"
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

if (($+commands[yq])) then
  alias jq="yq"
fi

## gentoo-specific

if (($+commands[emerge])) then
  alias p="emerge"
  alias p1="p1"
  alias pn="p --noreplace"
  alias pd="p --depclean"
  alias _p="_ p"
  alias _p1="_p -1"
  alias _pn="_p --noreplace"
  alias _pd="_p --depclean"
  alias emc="_ e /etc/portage/make.conf"
  alias eqf='equery f'
  alias equ='equery u'
  alias eqh='equery h'
  alias eqa='equery a'
  alias eqb='equery b'      
  alias eql='equery l'
  alias eqd='equery d'
  alias eqg='equery g'
  alias eqk='equery k'
  alias eqm='equery m'
  alias eqy='equery y'
  alias eqs='equery s'
  alias eqw='equery w'

  show-ebuild() {
    pager $(equery w "$1")
  }

  ujq() {
    echo -en $(cat $1) | jq
  }
fi

## weird cmd-style binds (just for lulz)
alias CD="cd"
alias cd..="cd.."
alias CD..=".."
alias md="mkdir"
alias MD="md"
alias cls="clear"

alias hakirfedtch='neofetch --ascii_distro Kali | sed "s/Gentoo/Kali/g" | sed "s/gentoo/kali/g" | sed "s/emerge/stolen user passports/g" | sed "s/dist/zen/"'

unicode-unescape() {
  echo -en $(cat $1)
}
