remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export nex_bash_path='$nex_bash_path >> $bashrc
  echo 'source $nex_bash_path/bash/main.sh' >> $bashrc
  echo 'export PATH=$nex_bash_path/bin:$PATH' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}