#! /bin/bash

# ~ is not part of the expansion
# so passing a path with ~ to a function will not able to go to the correct path
# workaround put ~/ before the passed path
# workaround use $HOME instead of ~
# as explained in https://stackoverflow.com/a/16703720

function paths() {
  list=(
    "/Documents/projects/profile/"
    "/Documents/CP/"
  )

  printf '%s\n' "${list[@]}" | (fzf -i --cycle --height=20 --header='Select a path to open in the selected session')
}
