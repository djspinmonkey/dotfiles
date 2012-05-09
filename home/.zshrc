# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=( osx vi-mode )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias vi='mvim'

export MANPATH=$MANPATH:/usr/share/man:/usr/local/man:/opt/local/share/man:/usr/local/share/man
export PATH=$HOME/bin:/opt/local/bin:/usr/local/bin:/opt/local/sbin:$PATH
export EDITOR='vim'
export SVN="svn+ssh://svn.damballa/svn/hooker"
#export RUBYOPT="rubygems"
export CFLAGS="-arch x86_64"
export ARCHFLAGS="-arch x86_64"
export PGDATA='/usr/local/var/postgres'
export NODE_PATH=/usr/local/lib/node
