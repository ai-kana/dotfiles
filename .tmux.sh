# 
# Functions to open commonly used tmux sessions
#

function tmkronstadt() {
    session = "kronstadt"

    if tmux has-session -t $session 2> /dev/null; then 
        tmux attach-session -t $session
    else
        tmux new-session -d -s $session "ls"
        tmux new-window -t $session:2

        tmux send-keys -t $session:1 'cd ~/code/cs/Kronstadt;nvim .' C-m
        tmux send-keys -t $session:2 'cd ~/U3DS/Servers/Unturnov' C-m

        tmux select-window  -t $session:1
        tmux a
    fi
}
