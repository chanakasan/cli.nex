#!/bin/bash

set -e

main() {
  local install_dir=$HOME/dotfiles/nex-cli
  local git_url="https://github.com/chanakasan/nex-cli"
  start
  # clone_repo
  create_symlink
  finish
}

start() {
  echo " Nex CLI"
  echo
}

finish() {
  echo " done"
  echo
}

clone_repo() {
  echo " => Cloning $git_url"
  mkdir -p $install_dir
  git clone $git_url $install_dir
}

create_symlink() {
  sh $install_dir/setup/symlink.sh
}

main
