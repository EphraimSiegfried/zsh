function() {
    export HISTFILE="$ZSH_DATA_HOME/zsh_history"
    setopt HIST_IGNORE_ALL_DUPS
    local zsh_state_dir=$(dirname $HISTFILE)
    if [[ ! -d $zsh_state_dir ]]; then
        echo "Creating $zsh_state_dir"
        mkdir -p $zsh_state_dir
    fi
}
