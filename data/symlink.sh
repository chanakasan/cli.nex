#!/bin/bash

set -e

nex_root=$HOME/dotfiles
install_dir=$nex_root/cli.nex

main() {
  local symlink_src=$install_dir/dist/nex
  local symlink_dest_dir=/usr/local/bin

  echo " Installing - Nex CLI"
  
  if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    :
  else
    sudo ln -nfs $symlink_src $symlink_dest_dir/nex
  fi

  echo " => created symlinks at $symlink_dest_dir"
  echo " done"
  echo
}

main
