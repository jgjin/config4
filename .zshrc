# Set zsh options
setopt APPEND_HISTORY GLOB_DOTS HIST_EXPIRE_DUPS_FIRST HIST_FIND_NO_DUPS HIST_IGNORE_ALL_DUPS SHARE_HISTORY

# Print group name above group of completions
zstyle ':completion:*' format '[%d]'
# Insert unambiguous prefixes immediately
zstyle ':completion:*' insert-unambiguous true
# Add colors to completions according to LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# Match case-insensitive then partial completion
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'

# Load completions
autoload -Uz compinit
compinit

# Environment variables
source ~/.variables.zsh

# Functions
source ~/.functions.zsh

# Generated with starship init zsh --print-full-init
source ~/.starship.zsh

# Generated with zoxide init zsh
source ~/.zoxide.zsh

# Generated with https://github.com/mattmc3/antidote antidote bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.zsh
source ~/.zsh_plugins.zsh

# Aliases
source ~/.aliases.zsh


# Conda init
# source ~/.conda.zsh
