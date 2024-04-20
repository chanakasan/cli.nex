base_dir="$(dirname "${BASH_SOURCE[0]}")/.."
export PATH=$base_dir/dist:$PATH
source $(nex _config)

# require_global_var nex_cli_base
# require_global_var nex_support

for f in $nex_cli_base/src/bash/*.sh; do
  if [ -f "$f" ]; then
    source $f
  fi
done

