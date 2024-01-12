source "$XDG_CONFIG_HOME/zsh/aliases"
setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB
# autocompletion
autoload -Uz compinit; compinit
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh
# to be able to autoload external scripts that we download in zsh/external directory
fpath=($ZDOTDIR/external $fpath)
# autoloading prompt formatting external script
autoload -Uz prompt_purification_setup; prompt_purification_setup
# push the currently visited directory on to the stack
setopt AUTO_PUSHD
# do not store duplicate dirs in the stack
setopt PUSHD_IGNORE_DUPS
# do not print the dir stack after pushd or popd
setopt PUSHD_SILENT
# enable vim mode
bindkey -v
export KEYTIMEOUT=1
# autoloading cursor mode external script
autoload -Uz cursor_mode && cursor_mode
# setup keys to navigate autocompletion menu
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
# for editing commands in neovim by pressing v in normal mode
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
# an alternative way for jumping to the parent directory (less effort)
source ~/.config/zsh/external/bd.zsh
# loading custom scripts
source $DOTFILES/zsh/scripts.sh
# loading fuzzy finder
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi
# sourcing syntax highlighting, keep at the very bottom of this file so that every loaded before can use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
