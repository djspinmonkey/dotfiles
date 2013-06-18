# Basic oh-my-zsh setup
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=( vi-mode )
source $ZSH/oh-my-zsh.sh

# Fix zsh's vi-mode backspace behavior.  :-(
zle -A .backward-kill-word vi-backward-kill-word
zle -A .backward-delete-char vi-backward-delete-char

# ZOMG, zsh, no I did NOT mean "spec".
unsetopt correct_all

# Howsabout some chruby?
chruby ruby-1.9
source /usr/local/share/chruby/auto.sh

# Aliases. Aka, this stuff here.
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias vi='mvim'
alias be='bundle exec' # Kinda wish "bundle exec" wasn't even a thing, but since it is....

# Export all the things.
export MANPATH=$MANPATH:/usr/share/man:/usr/local/man:/opt/local/share/man:/usr/local/share/man
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH=$HOME/bin:/opt/local/bin:/usr/local/bin:/opt/local/sbin:$PATH
export EDITOR='vim'
export CFLAGS="-arch x86_64"
export ARCHFLAGS="-arch x86_64"

# The places I usually put the stuff.
export PGDATA='/usr/local/var/postgres'
export NODE_PATH=/usr/local/lib/node
