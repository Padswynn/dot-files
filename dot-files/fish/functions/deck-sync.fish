# Defined via `source`
function deck-sync --wraps='rsync -avz paddy@192.168.1.95:~/documents/mtg.decks/ /home/paddy/files/mtg.decks' --description 'alias deck-sync rsync -avz paddy@192.168.1.95:~/documents/mtg.decks/ /home/paddy/files/mtg.decks'
  rsync -avz paddy@192.168.1.95:~/documents/mtg.decks/ /home/paddy/files/mtg.decks $argv; 
end
