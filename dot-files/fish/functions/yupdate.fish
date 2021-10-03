# Defined via `source`
function yupdate --wraps='yay -Syu --devel --timeupdate; sudo pacman -Fy' --description 'alias yupdate yay -Syu --devel --timeupdate; sudo pacman -Fy'
  yay -Syu --devel --timeupdate; sudo pacman -Fy $argv; 
end
