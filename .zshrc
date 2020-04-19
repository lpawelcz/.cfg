autoload -U colors && colors	# Load colors
PROMPT='%B[%F{76}%M%f%F{4}@%f%F{96}%n%f][%F{250}%1~%f]%(?.%F{76}.%F{red})%#%f%b '
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
[ -f ~/.zsh_env ] && source ~/.zsh_env
