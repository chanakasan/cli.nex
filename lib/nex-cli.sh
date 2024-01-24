nex_cli() {
  local nex_cli_root=$HOME/dotfiles/nex-cli
  local verb="$1"
  local fn=_run_$verb
  local param="$2"
  if [ -z "$verb" ]; then
    print_usage
  elif [ "$verb" == "install" ]; then
    _run_install_script $param
  elif [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  else
    _run_other_script $@
  fi
}

print_usage() {
  echo "Usage: nex <install|run> <script_name>"
}

_run_install_script() {
  local full_script_name=install-$1.sh
  local file_path=$nex_script_path/src/$full_script_name
  if [ -f $file_path ]; then
    echo "Running $full_script_name"
    bash  $file_path
  else
    echo "script not found: $file_path"
  fi
}

_run_other_script() {
  local full_script_name=$1-$2.sh
  local file_path=$nex_cli_root/src/$full_script_name
  if [ -f $file_path ]; then
    echo "Running $full_script_name"
    bash  $file_path
  else
    echo "script not found: $file_path"
  fi
}

_run_hello() {
  echo Hello $1 !
}
