parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[38;5;7m\][\d\[$(tput sgr0)\]\[\033[38;5;15m\], \[$(tput sgr0)\]\[\033[38;5;7m\]\A]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;8m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]]\[\033[38;5;7m\]\$(parse_git_branch) \n\[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"
