#!/usr/bin/env bash

set -e

main() {
  local start_text='__nex_cli_start'
  local end_text='__nex_cli_end'
  local bashrc="$HOME/.bashrc"
  local nex_cli_path=$(get_root_path)/nex-cli
  echo
  echo " Nex CLI Init"
  remove_from_bashrc
  copy_to_bashrc
  echo
  echo " done"
  echo " Please run below command"
  echo " source ~/.bashrc"
  echo ""
}

get_root_path() {
  local user=$(whoami)
  if [ "$user" = "codespace" ]; then
    echo /workspaces/.codespaces/.persistedshare
  else
    echo $HOME/dotfiles
  fi
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export nex_cli_path='$nex_cli_path >> $bashrc
  echo 'export PATH=$nex_cli_path/bin:$PATH' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

# _end_
main
