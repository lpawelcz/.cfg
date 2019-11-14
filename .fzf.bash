# Setup fzf
# ---------
if [[ ! "$PATH" == */home/alarm/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/alarm/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/alarm/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/alarm/.fzf/shell/key-bindings.bash"
