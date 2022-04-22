
[[ -o interactive ]] && echo 'Take Care of Your Shoes'

ZVM_CURSOR_STYLE_ENABLED=false
HISTFILE=~/zsh/histfile
HISTSIZE=1000
SAVEHIST=5000


# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

path+=('/home/paddy/.local/bin')
path+=('/home/paddy/.emacs.d/bin')
path+=('/home/paddy/files/prog')
path+=('/home/paddy/go/bin')
export PATH

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
  # export EDITOR='vim'
# else
  # export EDITOR='vim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# misc
set -k 		# allows comments in interactive shell
setopt	autocd	# cd by just typing in name of directory
	# Change "Command not found"
function command_not_found_handler() {
  print -P "not found: %F{red}$0%f" >&2
  return 127
}
setopt hist_expire_dups_first   # Delete duplicates first when HISTFILE size exceeds HISTSIZE
autoload -Uz promptinit
promptinit # use prompt themes


# aliases

alias orphan='pacman -Qtdq'
alias ls='ls --color'
alias ll='ls -a'
alias ssh='kitty +kitten ssh'
alias zshconfig='vim ~/.zshrc'
alias pac='sudo pacman -S'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Rs'
alias cl='source ~/.zshrc; clear ; cd; echo "This is What Space Smells Like"'
alias clock='tty-clock -C 6 -ct -f "%A, %B %d - %Y"'
alias db='sudo pacman -U *.pkg.tar.zst'
alias glone='git clone'
alias mkg='makepkg -src'
alias music='ncmpcpp'
alias search='pacman -Ss'
alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"
alias :q='exit'
alias pls='sudo $(fc -ln -1)'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias unzips='for f in *.zip; do unzip "$f" -d "${f%.zip}"; done'


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# vim
zinit load jeffreytse/zsh-vi-mode
 
# My Prompt stuff
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      PROMPT='%F{13}%Bpaddy%f%b at %F{14}%B%m%f%b in %B%F{cyan}%~%f%b
↪ %F{cyan$%f '
    ;; 
    $ZVM_MODE_INSERT)
      PROMPT='%F{13}%Bpaddy%f%b at %F{14}%B%m%f%b in %B%F{cyan}%~%f%b %B%F{blue}
↪%f %F{6}$%f%b '
    ;;
    $ZVM_MODE_VISUAL)
      PROMPT='%F{13}%Bpaddy%f%b at %F{14}%B%m%f%b in %B%F{cyan}%~%f%b
↪ %F{cyan$%f '
    ;;
    $ZVM_MODE_VISUAL_LINE)
      PROMPT='%F{13}%Bpaddy%f%b at %F{14}%B%m%f%b in %B%F{cyan}%~%f%b
↪ %F{cyan$%f '
    ;;
    $ZVM_MODE_REPLACE)
      PROMPT='%F{13}%Bpaddy%f%b at %F{14}%B%m%f%b in %B%F{cyan}%~%f%b
↪%F{cyan$%f '
    ;;
  esac
}
zinit ice wait lucid atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# Syntax highlighting
zinit ice wait lucid
zinit load zsh-users/zsh-syntax-highlighting
# NOTE The order is important here since it should be loaded before zsh-history-substring-search:
# https://github.com/zsh-users/zsh-history-substring-search#usage

# typeset -A ZSH_HIGHLIGHT_STYLES
# ZSH_HIGHLIGHT_STYLES[alias]='fg=green'
# ZSH_HIGHLIGHT_STYLES[assign]='none'
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=cyan'
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='none'
# ZSH_HIGHLIGHT_STYLES[commandseparator]='none'
# ZSH_HIGHLIGHT_STYLES[default]='none'
# ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan'
# ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=green'
# ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=cyan'
# ZSH_HIGHLIGHT_STYLES[function]='fg=blue'
# ZSH_HIGHLIGHT_STYLES[globbing]='fg=magenta'
# ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=b'
# ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=green'
# ZSH_HIGHLIGHT_STYLES[links]='none'
# ZSH_HIGHLIGHT_STYLES[path]='none'
# ZSH_HIGHLIGHT_STYLES[path_approx]='fg=yellow'
# ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
# ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'
# ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=blue'
# ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=green'
# ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=cyan'
# ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'

# History substring search
# zinit ice wait lucid atload'_history_substring_search_config' \
  # ver'dont-overwrite-config' 
zinit light 'zsh-users/zsh-history-substring-search'

### End of Zinit's installer chunk
