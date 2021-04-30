set -x PATH $PATH /sbin/
if status --is-interactive
	cat ~/.cache/wal/sequences
	. ~/.cache/wal/fish_colors.sh
	kitty + complete setup fish | source
end

function ll
    ls -lh $argv
end
