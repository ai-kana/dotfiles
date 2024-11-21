# 
# Functions to open commonly used tmux sessions
#

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

function tm_com() {
    session = "com"

    if tmux has-session -t $session 2> /dev/null; then 
        tmux attach-session -t $session
    else
        tmux new-session -d -s $session
        tmux new-window -t $session:2

        tmux send-keys -t $session:1 'cd ~/code/cs/Comissions' C-m
        tmux send-keys -t $session:2 'cd ~/U3DS/Servers' C-m

        tmux select-window  -t $session:1
        tmux a
    fi
}
