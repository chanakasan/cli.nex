for f in $(nex _pak)/pak/*.pak; do
  tmp_entry_file=$f/.internal/entry.sh
  if [ -f "$tmp_entry_file" ]; then
    echo source $tmp_entry_file
  fi
done
