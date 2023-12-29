function () {
    local antidote_home="$ZSH_DATA_HOME/antidote"

    if [[ ! -d "$antidote_home" ]]; then
        echo "Installing antidote..."
        git clone --depth=1 https://github.com/mattmc3/antidote.git "$antidote_home"
        echo "antidote cloned to $antidote_home"
    fi

    zstyle ':antidote:bundle' use-friendly-names 'yes'
    source "$antidote_home/antidote.zsh"
    antidote bundle <$ZDOTDIR/.zsh_plugins.txt >$antidote_home/zsh_plugins.zsh
    source $antidote_home/zsh_plugins.zsh
}
