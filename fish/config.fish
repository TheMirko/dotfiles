starship init fish | source

set -U FZF_CTRL_R_OPTS "--reverse"
set -U FZF_TMUX_OPTS "-p"

# path
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# alias
alias brewup "brew update && brew upgrade && brew cleanup --prune=all"
