# remove duplicate entries from $PATH
typeset -U PATH path

python="/Library/Frameworks/Python.framework/Versions/3.11/bin"
jvm="$HOME/Library/Java/JavaVirtualMachines/openjdk-18.0.1.1/Contents/Home/bin"
bins="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
pipx="$HOME/.local/bin"
t_tmux="$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin"
latex="/Library/TeX/texbin"
path=($bins $pipx $python $jvm $latex $t_tmux $path)
export PATH

