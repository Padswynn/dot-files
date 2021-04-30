# Defined in - @ line 1
function search --wraps='pacman -Ss' --description 'alias search pacman -Ss'
  pacman -Ss $argv;
end
