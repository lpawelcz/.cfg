# Setup fzf
# ---------
if [[ ! "$PATH" == */home/korzen/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/korzen/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/korzen/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/korzen/.fzf/shell/key-bindings.zsh"
