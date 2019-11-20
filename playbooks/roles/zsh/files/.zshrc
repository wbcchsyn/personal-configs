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
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
PROMPT="%n@%F{red}%m%F{default}:%~%1(v|%F{green}%1v%f|)%F{default}%# "

LANG=en_US.UTF-8
export LANG

for f in .shellrc .aliasrc .local_zshrc; do
    if [ -f "$HOME/$f" ]; then
        . "$HOME/$f"
    fi
done

echo "$PATH" | grep -q "$HOME/zsh_bin" || PATH="$HOME/zsh_bin:$PATH"
