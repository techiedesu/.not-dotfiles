alias doas='doas '                                      #  for working coplitions
alias pager=$PAGER                                      # can be not "less"
alias less=$PAGER
alias grep="grep --color"
alias cat="bat -pp"
alias env="env | bat -l ini"
alias _="doas"
alias ls="eza --smart-group --icons --no-permissions --octal-permissions --git --extended"
alias l="ls -l"
alias ll="ls -lah"
alias e=$EDITOR
alias rr=". ~/.zshrc"
alias er="e ~/.zshrc"
alias _e="_ $EDITOR"
alias ip="ip -c"
alias cp="rsync -ah --no-whole-file --info=progress2"
alias jq="yq"

## gentoo-specific
alias p="emerge"
alias _p="_ p"
alias emc="_ e /etc/portage/make.conf"

## wayland-specific
alias code="code --ozone-platform=wayland"

## weird cmd-style binds (just for lulz)
alias CD="cd"
alias cd..="cd.."
alias CD..=".."
alias md="mkdir"
alias MD="md"
alias cls="clear"

alias hakirfedtch='neofetch --ascii_distro Kali | sed "s/Gentoo/Kali/g" | sed "s/gentoo/kali/g" | sed "s/emerge/stolen user passports/g" | sed "s/dist/zen/"'

show-ebuild() {
  pager $(equery w "$1")
}

unicode-unescape() {
  echo -en $(cat $1)
}

ujq() {
  echo -en $(cat $1) | jq
}
