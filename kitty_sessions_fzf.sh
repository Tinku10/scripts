#! /bin/bash

# source all the required files
source ~/Documents/projects/scripts/kitty_sessions.sh
source ~/Documents/projects/scripts/print_paths.sh

function filter() {
  ex=$1
  dir=$(paths)

  if [[ "$ex" == "web session" ]] 
  then 
    webs ~/$dir 
  elif [[ "$ex" == "cp session" ]] 
  then
    cps ~/$dir
  fi
}

function lists() {
  # dir=$1
  exe=$(list_sessions | (fzf -i --cycle --height=20 --header="Select a session"))
  filter $exe
}
