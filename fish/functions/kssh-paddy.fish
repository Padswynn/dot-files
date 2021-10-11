# Defined via `source`
function kssh-paddy --wraps='kitty +kitten ssh -X paddy@192.168.1.6' --description 'alias kssh-paddy kitty +kitten ssh -X paddy@192.168.1.6'
  kitty +kitten ssh -X paddy@192.168.1.6 $argv; 
end
