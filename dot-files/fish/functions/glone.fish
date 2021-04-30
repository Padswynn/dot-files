# Defined via `source`
function glone --wraps='git clone' --description 'alias glone git clone'
  git clone $argv; 
end
