#!/bin/bash

set -e

base_dir="$(dirname "${BASH_SOURCE[0]}")/.."
echo $BASH_SOURCE
echo $0
echo $base_dir 
exit 1
source $base_dir/src/init/init.sh

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
