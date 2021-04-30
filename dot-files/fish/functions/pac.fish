# Defined via `source`
function pac --wraps='sudo pacman -S' --description 'alias pac sudo pacman -S'
  sudo pacman -S $argv; 
end
