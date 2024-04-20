#!/bin/bash

set -e

TEMP_CONFIG=$HOME/dotfiles/cli.nex/setup/config.sh
source $TEMP_CONFIG

main() {
  local install_dir=$nex_cli_base
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
