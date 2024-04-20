source $(nex _config)

for f in $nex_cli_base/src/bash/*.sh; do
  if [ -f "$f" ]; then
     source $f
  fi
done
