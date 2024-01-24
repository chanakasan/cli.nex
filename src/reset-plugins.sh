main() {
  local root=$HOME/dotfiles
  echo
  echo " Resetting plugins"
  echo
  sh $root/nex-bash/setup/install.sh
  sh $root/nex-mods/setup/install.sh
  sh $root/nex-git/setup/install.sh

  echo 
  echo " done"
}

main