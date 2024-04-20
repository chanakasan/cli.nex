#!/bin/bash

set -e

nex_root=$HOME/dotfiles
install_dir=$nex_root/cli.nex

main() {
  local symlink_src=$install_dir/dist/nex
  local symlink_dest_dir=/usr/local/bin
  local symlink_1=$symlink_dest_dir/nex

  if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    symlink_dest_dir=$HOME/bin
  fi

  echo " Installing - Nex CLI"
  sudo ln -nfs $symlink_src $symlink_1
  echo " => created symlinks"
  echo " * $symlink_1"
  echo " done"
  echo
}

main
