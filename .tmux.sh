# 
# Functions to open commonly used tmux sessions
#

function tmmeow() {
    session = "meow"

    if tmux has-session -t $session 2> /dev/null; then 
        tmux attach-session -t $session
    else
        tmux new-session -d -s $session "ls"
        tmux new-window -t $session:2

        tmux send-keys -t $session:1 'cd ~/code/cs/Meow' C-m
        tmux send-keys -t $session:2 'cd ~/U3DS/Servers/Unturnov' C-m

        tmux select-window  -t $session:1
        tmux a
    fi
}

function tmlocalmod() {
    session = "localmod"

    if tmux has-session -t $session 2> /dev/null; then 
        tmux attach-session -t $session
    else
        tmux new-session -d -s $session "ls"
        tmux new-window -t $session:2
        tmux new-window -t $session:3

        tmux send-keys -t $session:1 'cd ~/code/cs/LocalMod' C-m
        tmux send-keys -t $session:2 'cd ~/code/cs/Unturned-Datamining/Assembly-CSharp' C-m
        tmux send-keys -t $session:3 'cd ~/U3DS/Servers/LocalModTest' C-m

        tmux select-window  -t $session:1
        tmux a
    fi
}
