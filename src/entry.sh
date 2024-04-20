base_dir="$(dirname "${BASH_SOURCE[0]}")/.."
export PATH=$base_dir/dist:$PATH

for f in $base_dir/src/bash/*.sh; do
  if [ -f "$f" ]; then
     source $f
  fi
done
