function cmd_exists {
    command -v "$1" &> /dev/null
}

function v {
  cwd=$(pwd)
  if [ $# -eq 1 ]; then 
      if [[ -f $1 ]]; then # argument is file
          nvim $1
      else
          z $1
          tmp_pwd=$(pwd)
          cd $cwd
          nvim $tmp_pwd
      fi
  else
      nvim .
  fi
}

function d {
    ls -d ~/.* ~/.config/*|\
        fzf --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'\
        |xargs nvim
}

