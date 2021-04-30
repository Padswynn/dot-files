# Defined in - @ line 1
function create --wraps='sudo pacman -U' --description 'alias create sudo pacman -U'
  sudo pacman -U $argv;
end
