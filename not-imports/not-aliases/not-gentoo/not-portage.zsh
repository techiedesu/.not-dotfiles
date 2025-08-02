[ -n "$PS1" ] || { echo "Allowed only sourcing"; exit $ERRCODE; }

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
fi