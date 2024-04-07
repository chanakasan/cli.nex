main() {
  if [ -z "$1" ]; then
    echo " Usage: nex install plug cli|git|mux|run|tools"
    echo
    exit 1
  fi
  local plugin_name=$1.nexplugin
  local base_dir=$HOME/dotfiles
  local file=$base_dir/$plugin_name/setup/install.sh
  if [ -f $file ]; then
    echo " Running setup $file"
    bash $file ${@:2}
  else
    echo " setup not found: $file"
  fi
}

main $@
