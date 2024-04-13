#!/bin/bash

set -e

main() {
  local plugin_name=cli.nexplugin
  local root_dir=$HOME/dotfiles
  local install_dir=$root_dir/$plugin_name
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
