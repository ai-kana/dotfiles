#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

BOLD="\e[1m"
RESET="\e[0m"

BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"

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
