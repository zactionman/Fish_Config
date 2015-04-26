#! /usr/bin/fish

# A few useful variables

set -g PY3 /home/zachary/Documents/Programming/py3s/
set -g PY2 /home/zachary/Documents/Programming/py2s/

# Load Aliases
if [ -f ~/.config/fish/aliases.fish ]
    source ~/.config/fish/aliases.fish
end

# Ad ~/bin if it exists
if [ -d ~/bin ]
    set PATH $PATH ~/bin
end
