# ~/.config/fish/config.fish
 
set fish_greeting ""

if status is-interactive
and not set -q TMUX
    exec tmux
end

# NVM configuration
set -gx NVM_DIR ~/.nvm
bass source $NVM_DIR/nvm.sh --no-use

