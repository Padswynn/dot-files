# Defined via `source`
function ctl --wraps=systemctl --description 'alias ctl systemctl'
  systemctl $argv; 
end
