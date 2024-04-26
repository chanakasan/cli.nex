nx_source_folder() {
  local base="$1"
  for f in $base/*.sh; do
    if [ -f "$f" ]; then
      source $f
    fi
  done
}
