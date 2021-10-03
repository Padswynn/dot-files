# Defined in - @ line 1
function merge --wraps='xrdb -merge ~/.Xresources' --description 'alias merge xrdb -merge ~/.Xresources'
  xrdb -merge ~/.Xresources $argv;
end
