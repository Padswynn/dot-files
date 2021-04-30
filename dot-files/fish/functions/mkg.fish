# Defined in - @ line 1
function mkg --wraps='makepkg -sr' --wraps='makepkg -src' --description 'alias mkg makepkg -src'
  makepkg -src $argv;
end
