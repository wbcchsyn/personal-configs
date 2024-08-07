autoload -U compinit
compinit -u

setopt auto_pushd
setopt pushd_ignore_dups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%b)'
precmd () {
    psvar=()
    vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
PROMPT="%B%U%n@%F{red}%m%f:%~%1(v|%F{green}%1v%f|)%f%#%u%b "
zle_highlight=(default:bold)

for f in .shellrc .aliasrc .local_zshrc .localrc; do
    if [ -f "$HOME/$f" ]; then
        . "$HOME/$f"
    fi
done
