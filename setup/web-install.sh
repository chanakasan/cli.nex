#!/bin/bash

set -e

nex_root=$HOME/dotfiles
install_dir=$nex_root/cli.nex

main() {
  local git_url="https://github.com/chanakasan/cli.nexplugin"
  clone_repo
  run_install
}

clone_repo() {
  echo " => Cloning $git_url"
  if [ -d "$install_dir" ]; then
    echo " Dir exists: $install_dir"
    echo " Please remove it first" 
    exit 1
  fi

  mkdir -p $install_dir
  git clone $git_url $install_dir
}

run_install() {
  bash $install_dir/setup/install.sh
}

main
