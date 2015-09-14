echo "
Sessions are useful for completely separating work environments. I have a ‘Work’ session and a 'Play’ session; in 'Work’, I keep everything open that I need during my day-to-day development, while in 'Play’, I keep open current open-source gems or other work I hack on at home.

`tmux new -s session_name`
creates a new tmux session named session_name
`tmux attach -t session_name`
attaches to an existing tmux session named session_name
`tmux switch -t session_name`
switches to an existing session named session_name
`tmux list-sessions`
lists existing tmux sessions
`tmux detach (prefix + d)`
detach the currently attached session
";


echo "
prefix == Ctrl+A

`tmux split-window (prefix + “)`
splits the window into two vertical panes
`tmux split-window -h (prefix + %)`
splits the window into two horizontal panes
`tmux swap-pane -[UDLR] (prefix + { or })`
swaps pane with another in the specified direction
`tmux select-pane -[UDLR]`
selects the next pane in the specified direction
`tmux select-pane -t :.+`
selects the next pane in numerical order
";

echo "
Helpful tmux commands

`tmux list-keys`
lists out every bound key and the tmux command it runs
`tmux list-commands`
lists out every tmux command and its arguments
`tmux info`
lists out every session, window, pane, its pid, etc.
`tmux source-file ~/.tmux.conf`
reloads the current tmux configuration (based on a default tmux config)
";


echo "
tmux has a tabbed interface, but it calls its tabs “Windows”. To stay organized, I rename all the windows I use; if I’m hacking on a gem, I’ll name the window that gem’s name. The same thing goes for client applications. That way, I can recognize windows by context and not what application it’s running.

`tmux new-window (prefix + c)`
create a new window
`tmux select-window -t :0-9 (prefix + 0-9)`
move to the window based on index
`tmux rename-window (prefix + ,)`
rename the current window
";

