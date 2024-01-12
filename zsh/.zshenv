# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# For opening your favorite editor
export EDITOR="nvim"
export VISUAL="nvim"

# For ZSH config files
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"

# Maximum events for internal history
export HISTSIZE=10000

# Maximum events in history file
export SAVEHIST=10000

# For dotfiles
export DOTFILES="$HOME/dotfiles"

# Make fzf use ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
