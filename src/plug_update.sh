main() {
  if [ -z "$1" ]; then
    echo " Usage: nex update plug cli|git|mux|run|tools"
    echo
    exit 1
  fi
  local plugin_name=$1.nexplugin
  local base_dir=$HOME/dotfiles
  local plugin_path=$base_dir/$plugin_name
  cd $plugin_path
  local branch_name=$(git rev-parse --abbrev-ref HEAD)

  if [ -n "$(git status --porcelain)" ]; then
    echo " Please commit changes first"
    echo " in $plugin_path"
    echo
    exit 1
  fi

  echo " Updating Plugin - $plugin_name"
  git pull --rebase origin $branch_name
  echo " done"
  echo
}

main $@
