base_dir="$(dirname "${BASH_SOURCE[0]}")"
source $base_dir/../setup/init.sh

for f in $nex_cli_base/src/bash/*.sh; do
  if [ -f "$f" ]; then
    source $f
  fi
done

