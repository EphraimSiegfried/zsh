function() {
  local completion_dir="$ZSH_DATA_HOME/completion"
  local cache_dir="$HOME/Library/Caches/zsh"
  local compdump="$cache_dir/zcompdump"

  [[ -d "$completion_dir" ]] || mkdir -p "$completion_dir"
    fpath+="$completion_dir"

    cmd_exists gh \
        && [[ ! -f $completion_dir/_gh ]] \
        && gh completion -s zsh > $completion_dir/_gh

    cmd_exists poetry \
        && [[ ! -f $completion_dir/_poetry ]] \
        && poetry completions zsh > $completion_dir/_poetry

    cmd_exists chezmoi \
        && [[ ! -f $completion_dir/_chezmoi ]] \
        && chezmoi completion zsh > $completion_dir/_chezmoi

    if [[ ! -d $cache_dir ]]; then
        echo "Creating $cache_dir"
        mkdir -p $cache_dir
    fi

    autoload -Uz compinit

    # cache .zcompdump for about a day
    if [[ $compdump(#qNmh-20) ]]; then
        compinit -C -d "$compdump"
    else
        compinit -i -d "$compdump"; touch "$compdump"
    fi
    {
        # compile .zcompdump
        if [[ -s "$compdump" && (! -s "${compdump}.zwc" || "$compdump" -nt "${compdump}.zwc") ]]; then
            zcompile "$compdump"
        fi
    } &!

}
