# Defined in - @ line 1
function db --wraps='sudo pacman -U *.pkg.tar.zst ;repo-add ~/files/pacman-db/aur-git-db/aur-git.db.tar.gz' --description 'alias db sudo pacman -U *.pkg.tar.zst ;repo-add ~/files/pacman-db/aur-git-db/aur-git.db.tar.gz'
  sudo pacman -U *.pkg.tar.zst ;repo-add ~/files/pacman-db/aur-git-db/aur-git.db.tar.gz $argv;
end
