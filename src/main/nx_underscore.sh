nx_underscore() {
  local cmd="$1"
  local args="${@:2}"
  if [ "$cmd" == "rm" ]; then
    cmd="rm -i -r"
  fi

  $cmd $args
}
