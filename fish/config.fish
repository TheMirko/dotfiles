starship init fish | source
zoxide init fish | source

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings
set -U LANG en_US.UTF-8
set -U LC_ALL en_US.UTF-8

set -Ux EDITOR nvim
set -Ux VISUAL nvim

# path
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/share/dotnet
fish_add_path ~/.rover/bin


# alias
alias brewup "yabai --stop-service && skhd --stop-service && brew update && brew upgrade && brew cleanup --prune=all && skhd --start-service && yabai --start-service"

# ~/.tmux/plugins
fish_add_path $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin
# ~/.config/tmux/plugins
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin

#fish friendly wrappers
function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

function rider
   open -a Rider.app $argv
end
