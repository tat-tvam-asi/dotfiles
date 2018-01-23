### Environment variables
# Set EDITOR. Hope I won't have to resort to pico
if command --search --quiet "nvim"
    set -gx EDITOR nvim
else if command --search --quiet "vim"
    set -gx EDITOR vim
else
    set -gx EDITOR nano
end

### Some handy aliases
source $HOME/.config/fish/aliases.fish

### Language specific additions and paths
source $HOME/.config/fish/go.fish

### Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-monokai.sh
end

### Pure prompt theme
set fish_function_path $fish_function_path $HOME/.config/fish/functions/pure
source $HOME/.config/fish/functions/pure/fish_prompt.fish

### Color 'less' output
set -gx LESS_TERMCAP_mb \e'[01;31m'
set -gx LESS_TERMCAP_md \e'[01;31m'
set -gx LESS_TERMCAP_me \e'[0m'
set -gx LESS_TERMCAP_se \e'[0m'
set -gx LESS_TERMCAP_so \e'[01;44;33m'
set -gx LESS_TERMCAP_ue \e'[0m'
set -gx LESS_TERMCAP_us \e'[01;32m'
