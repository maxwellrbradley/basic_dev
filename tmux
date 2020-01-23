# reset all bindings
unbind -T root -a
unbind -T prefix -a

set -g escape-time 10
set -g prefix C-a
set -g base-index 1
set -g default-terminal "screen-256color"
set -g allow-rename off

# mouse
set -g mouse on
bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'select-pane -t=; copy-mode -e; send-keys -M'"
bind -n WheelDownPane select-pane -t= \; send-keys -M
set-option -g default-shell "/bin/bash"

# copy paste
setw -g mode-keys vi
bind [ copy-mode
bind -T copy-mode-vi v send-keys -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-selection
bind -T copy-mode-vi V send-keys -X rectangle-toggle
bind ] paste-buffer
bind Space choose-buffer

# pass C-a through to the terminal
bind C-a send-prefix

# pane management
bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R

bind -r C-h resize-pane -L 5
bind -r C-j resize-pane -D 5
bind -r C-k resize-pane -U 5
bind -r C-l resize-pane -R 5

bind -n M-H split-window -bhc '#{pane_current_path}'
bind -n M-J split-window -vc '#{pane_current_path}'
bind -n M-K split-window -bvc '#{pane_current_path}'
bind -n M-L split-window -hc '#{pane_current_path}'

bind -n C-M-h swap-pane -t {left-of}
bind -n C-M-j swap-pane -t {down-of}
bind -n C-M-k swap-pane -t {up-of}
bind -n C-M-l swap-pane -t {right-of}

bind R source-file ~/.tmux.conf\; display "conf reloaded"
bind w new-window
bind l next-window
bind h previous-window
bind ':' command-prompt
bind s swap-pane
bind d detach

# colors
set -g status-bg colour0
set -g status-fg colour10
set -g status-interval 2

# window status
setw -g status-justify left
setw -g window-status-format "#I:#W"
setw -g window-status-current-format "#I:#W"
setw -g window-status-current-style fg=colour15,bg=colour3
setw -g window-status-style bg=colour8

# left and right status
set -g status-position bottom
set -g status-left '#(hostname) #S '
set -g status-left-length 20
set -g status-right "%A, %B %d, %Y  %l:%M:%S %p"
set -g status-style fg=colour15
