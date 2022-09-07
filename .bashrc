
# >>> bash customize >>>
export PS1="[\[$(tput sgr0)\]\[\033[38;5;76m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;220m\]\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;69m\]\W\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"

vis() {
  vim -S "$1" -c 'source ~/.vimrc'
}

alias tmux='tmux -2'
# <<< bash customize <<<

