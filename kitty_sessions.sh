#! /bin/bash

# https://dev.to/dylanirlbeck/kitty-sessions-44j2
# source the script to run individual functions using the command
# source kitty_sessions.sh
# run functions directly like
# webs ~path/to/the/directory

function webs() {
  export dir=$1
  kitty --session ~/.config/kitty/sessions/web.conf
}

function cps() {
  export dir=$1
  kitty --session ~/.config/kitty/sessions/cp.conf
}

function list_sessions() {
  echo 'web session'
  echo 'cp session'
}
