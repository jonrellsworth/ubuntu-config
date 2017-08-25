# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#powerline
if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh  ]]; then
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ubuntu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# User specific aliases and functions
alias ll="ls -alhF"
alias cunix="ssh -Y jre2134@cunix.cc.columbia.edu"
alias valcheck='valgrind --leak-check=yes --track-origins=yes'
unalias rm

vim()(command vim "$@" && [[ "$@" = *'.c'* || "$@" = *'.h'* || "$@" = Makefile ]] && make)
gitup()( git add . && git commit -m "$*" && gp )

export LC_ALL="en_US.UTF-8"

# setopts
setopt clobber
setopt append_create
