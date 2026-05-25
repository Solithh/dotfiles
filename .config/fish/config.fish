if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx EDITOR nvim
set -x STARSHIP_CONFIG ~/.config/starship.toml
starship init fish | source
set -U fish_greeting ""
fastfetch

# Aliases

alias c='clear'
alias ff='fastfetch'
alias ls='eza -l --icons --no-permissions --no-time'
alias cat='bat'
alias vim='nvim'
alias config='git --git-dir=/home/sol/.dotfiles/ --work-tree=/home/sol'
