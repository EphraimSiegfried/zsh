python=/Library/Frameworks/Python.framework/Versions/3.11/bin
jvm=~/Library/Java/JavaVirtualMachines/openjdk-18.0.1.1/Contents/Home/bin
bins=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$Home/.local/bin
t_tmux=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
latex=/Library/TeX/texbin
export PATH="$bins:$python:$jvm:$t_tmux:$latex:$PATH"
export HISTFILE="$ZSH_DATA_HOME/zsh_history"

