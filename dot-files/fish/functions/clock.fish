# Defined via `source`
function clock --wraps='tty-clock -ct -f "%A, %B %d - %Y"' --description 'alias clock tty-clock -ct -f "%A, %B %d - %Y"'
  tty-clock -ct -f "%A, %B %d - %Y" $argv; 
end
