nex_cli() {
  local a1="$1"
  if [ -z "$a1" ]; then
    print_usage
  elif [ "$a1" == "install" ]; then
    _run_install_script $@
  elif [ "$a1" == "run" ]; then
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
  local full_script_name=nex-$1-$2.sh
  echo "Running $full_script_name"
  bash $nex_script_path/src/$full_script_name $3
}

_run_func() {
  echo
  echo " Hello !"
  echo 
}
