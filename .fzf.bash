# Setup fzf
# ---------
if [[ ! "$PATH" == */home/pczarnecki/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/pczarnecki/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/pczarnecki/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/pczarnecki/.fzf/shell/key-bindings.bash"
