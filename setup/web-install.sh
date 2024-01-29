#!/bin/bash

set -e

main() {
  local src_dir=$HOME/dotfiles/nex-cli
  local git_url="https://github.com/chanakasan/nex-cli"
  local symlink_path=/usr/local/bin/nex
  echo " Nex CLI"
  # abort_if_dir_exist
  echo ""
  # clone
  symlink
  echo ""
  echo " done"
  echo ""
}

clone() {
  echo " => Cloning $git_url"
  mkdir -p $src_dir
  git clone $git_url $src_dir
}

symlink() {
  echo " => Creating a symlink at $symlink_path"
  sh $src_dir/setup/symlink.sh
}

main
