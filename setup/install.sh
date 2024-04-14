#!/bin/bash

source $(dirname $0)/../dist/config.sh

set -e

main() {
  local dest_name=cli.nex
  local install_dir=$(nex_root_path)/$dest_name
  start
  create_symlink
  finish
}

start() {
  echo " Installing Nex CLI"
}

finish() {
  echo " done"
  echo
}

create_symlink() {
  local symlink_src=$install_dir/dist/nex
  local symlink_dest_dir=/usr/local/bin
  local symlink_1=$symlink_dest_dir/nex
  local symlink_2=$symlink_dest_dir/nx
  sudo ln -nfs $symlink_src $symlink_1
  sudo ln -nfs $symlink_src $symlink_2
  echo " => created symlinks at $symlink_dest_dir"
  echo " * $symlink_1"
  echo " * $symlink_2"
}

main
