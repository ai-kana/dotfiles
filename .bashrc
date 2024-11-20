#
# MY EPIC BASHRC
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias tmk='tmux kill-session'
alias tmks='tmux kill-server'

BOLD="\e[1m"
RESET="\e[0m"

RED="\e[31m"
GREEN="\e[32m"
MAGENTA="\e[35m"
WHITE="\e[37m"

function tm_unturnov() {
    session = "unturnov"

    if tmux has-session -t $session 2> /dev/null; then 
        tmux attach-session -t $session
    else
        tmux new-session -d -s $session 'cd ~/code/cs/Unturnov;nvim .'
        tmux new-window -t $session:2

        tmux send-keys -t $session:1 'cd ~/code/cs/Unturnov;nvim .' C-m
        tmux send-keys -t $session:2 'cd ~/U3DS/Servers/Unturnov' C-m

        tmux select-window  -t $session:1
        tmux a
    fi
}

function get_branch() {
    git rev-parse --is-inside-work-tree &>/dev/null || return

    branch=$(git branch --show-current 2>/dev/null)

    if [ -z "$(git status --porcelain 2>/dev/null)" ]; then
        echo -e " ${GREEN}${branch}"
    else
        echo -e " ${RED}${branch}"
    fi
}

PS1="\[${BOLD}\][\[${MAGENTA}\]\u\$(get_branch) \[${WHITE}\]\W] \$ \[${RESET}\]"
