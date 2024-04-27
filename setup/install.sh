#!/bin/bash

set -e

tmp_config_path() {
  local root=$HOME/dotfiles/cli.nex
  echo $root/src/base/config.sh
}
source $(tmp_config_path)

main() {
  local install_dir=$nex_cli_base
  local symlink_src=$install_dir/bin/nex
  local symlink_dest=/usr/local/bin/nex

  echo " Installing - Nex CLI"
  
  if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "can't install on windows"
  else
    sudo ln -nfs $symlink_src $symlink_dest
  fi

  echo " => created symlinks at $symlink_dest"
  echo " done"
  echo
}

main
