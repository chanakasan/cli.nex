is_command() {
  local name="$1"
  if ! command -v $name &> /dev/null
  then
    echo "false"
  else
    echo "true"
  fi
}

is_function() {
  local a1="$1"
  if [[ $(type -t $a1 ) == function ]]; then
    echo true
  else
    echo false
  fi
}