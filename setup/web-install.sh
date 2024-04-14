#!/bin/bash

set -e

# config
nex_root_path=$HOME/dotfiles
# end config

main() {
  local install_dir=$nex_root_path/cli.nex
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
  sh $install_dir/setup/install.sh
}

main
