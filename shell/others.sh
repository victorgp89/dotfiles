function export_apps() {
  sudo dpkg-query -l | awk '{if ($1 == "ii") print $2}' > packages_list.txt
  echo 'Apt apps exported!'
}

function import_apps() {
 sudo xargs -a $DOTFILES_PATH/os/linux/packages_list.txt apt install
}
