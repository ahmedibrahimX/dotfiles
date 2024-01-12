source "$XDG_CONFIG_HOME/zsh/aliases"
setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB
autoload -Uz compinit; compinit
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh
fpath=($ZOTDIR/external $fpath)
