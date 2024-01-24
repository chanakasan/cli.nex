nex_cli() {
  local verb="$1"
  local param="$2"
  if [ -z "$verb" ]; then
    print_usage
  elif [ "$verb" == "install" ]; then
    _run_install_script $param
  elif [ "$verb" == "run" ]; then
    _run_func $@
  else
    print_usage
  fi
}

print_usage() {
  echo "Usage: nex <install|run> <script_name>"
}

_open() {
  local v1="$1"
  echo "Nex Open: $v1"
  if [ "$v1" == "script" ]; then
    /mnt/c/VSCode/bin/code ~/nex-script
  else
    echo "Unknown $v1"
  fi
}

_provision() {
  echo "Provision: $1"
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

_run_func() {
  echo
  echo " Hello !"
  echo 
}
