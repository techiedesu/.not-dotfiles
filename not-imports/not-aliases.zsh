alias doas='doas '                                      #  for working coplitions
alias pager=$PAGER                                      # can be not "less"
alias cat="bat -pp"
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

## gentoo-specific
alias _p="_ emerge "
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
  cat $(equery w "$1")
}

unicode-unescape() {
  echo -en $(cat $1)
}

ujq() {
  echo -en $(cat $1) | jq
}