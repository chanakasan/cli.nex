nex_cli() {
  local nex_cli_root=$HOME/dotfiles/nex-cli
  local a1="$1"
  local a2="$2"
  local a3="$3"
  local fn=_run_$a1
  if [ -z "$a1" ]; then
    print_usage
  elif [ "$a1" == "install" ]; then
    _run_install_script $a2 $a3
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
  local arg1="$2"
  local 
  local file_path=$nex_script_path/src/$full_script_name
  if [ -f $file_path ]; then
    echo "Running $full_script_name"
    bash  $file_path $arg1
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
