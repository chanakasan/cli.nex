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
  echo
}

finish() {
  echo " done"
  echo
}

create_symlink() {
  local symlink_src=$install_dir/dist/nex
  local symlink_dest=/usr/local/bin/nex
  echo " => Creating a symlink at $symlink_dest"
  sudo ln -nfs $symlink_src $symlink_dest
  echo " => Symlink created"
  echo
}  

main
