#aliast for config repo
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

alias ll='ls -l'
alias lla='ls -la'
alias makef='make -j 8'
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'

alias pacman-fzf='pacman -Slq | fzf -m --preview '"'"'pacman -Si {1}'"'"' | xargs -ro sudo pacman -S'
