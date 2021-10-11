# Defined in - @ line 1
function fail --wraps='systemctl --failed' --description 'alias fail systemctl --failed'
  systemctl --failed $argv;
end
