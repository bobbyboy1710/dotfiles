set fish_greeting ""
set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias py "python3"
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
#set -gx PATH /usr/local/lib/node_modules $PATH

# Go
set -gx GO111MODULE 'on'
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dmytro/google-cloud-sdk/path.fish.inc' ]; . '/home/dmytro/google-cloud-sdk/path.fish.inc'; end
#Keybind
bind \cf 'tmux-sessionizer\n'

