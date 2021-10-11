# Defined in - @ line 1
function unmount-flash --wraps='sudo umount /run/media/paddy/PG-FLASH/' --description 'alias unmount-flash sudo umount /run/media/paddy/PG-FLASH/'
  sudo umount /run/media/paddy/PG-FLASH/ $argv;
end
