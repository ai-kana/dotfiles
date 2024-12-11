#
# MY EPIC BASHRC
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias objdump='objdump -M intel'

alias ssh='kitten ssh'

alias tmk='tmux kill-session'
alias tmks='tmux kill-server'

alias bnuuy='cat ~/bnuuy.txt'

BOLD="\e[1m"
RESET="\e[0m"

RED="\e[31m"
GREEN="\e[32m"
MAGENTA="\e[35m"
WHITE="\e[37m"

source .tmux.sh

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
