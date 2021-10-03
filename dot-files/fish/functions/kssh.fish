# Defined in - @ line 1
function kssh --wraps='kittey +kitten ssh' --wraps='kitten] +kitten ssh' --wraps='kitty +kitten ssh' --description 'alias kssh kitty +kitten ssh'
  kitty +kitten ssh $argv;
end
