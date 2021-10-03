# Defined in - @ line 1
function remove --wraps='sudo pacman -R' --wraps='sudo pacman -Rs' --description 'alias remove sudo pacman -Rs'
  sudo pacman -Rs $argv;
end
