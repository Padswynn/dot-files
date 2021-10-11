# zshrc

# Some fun interactive stuff
[[ -o interactive ]] && echo 'This is What Space Smells Like'
# [[ -o interactive ]] && (cat ~/.cache/wal/sequences &)
[[ -o interactive ]] && source ~/.cache/wal/colors-tty.sh
[[ -o interactive ]] && . ~/.cache/wal/colors.sh
# Commented out, but did not work when commented in either
# [[ -o interactive ]] && source zsh-syntax-highlighting.zsh
# [[ -o interactive ]] && source zsh-history-substring-search.zsh

ZVM_CURSOR_STYLE_ENABLED=false
HISTFILE=~/zsh/histfile
HISTSIZE=1000
SAVEHIST=5000


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# neither set of bindkeys helped
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down


path+=('/home/paddy/local/bin')
path+=('/home/paddy/files/prog')
path+=('/home/paddy/.emacs.d/bin')
path+=('/home/paddy/go/bin')
export PATH

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# aliases

alias ls='ls --color'
alias ll='ls -a'
alias ssh='kitty +kitten ssh'
alias zshconfig='vim ~/.zshrc'
alias pac='sudo pacman -S'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Rs'
alias cl='source ~/.zshrc; clear ; cd; echo "This is What Space Smells Like"'
alias clock='tty-clock -C 3 -ct -f "%A, %B d% - %Y"'
alias db='sudo pacman -U *.pkg.tar.zst ;repo-add ~/files/pacman-db/aur-git-db/aur-git.db.tar.gz'
alias glone='git clone'
alias mkg='makepkg -src'
alias music='ncmpcpp'
alias search='pacman -Ss'
alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"
alias todd-ex='./todd/bot.py'
alias :q='exit'
alias ctl="systemctl"
alias pls='sudo $(fc -ln -1)'

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

function _history_substring_search_config() {
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down

}

# vim
zinit load jeffreytse/zsh-vi-mode

# My Prompt stuff
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      PROMPT='%B%F{yellow}paddy%f%b at %B%F{magenta}%m%f%b in %B%F{cyan}%~%f%b
↪ '
    ;; 
    $ZVM_MODE_INSERT)
      PROMPT='%F{yellow}%Bpaddy%f%b at %F{magenta}%B%m%f%b in %B%F{cyan}%~%f%b %B%F{blue}
↪%b%f '
    ;;
    $ZVM_MODE_VISUAL)
      PROMPT='%F{yellow}%Bpaddy%f%b at %F{magenta}%B%m%f%b in %B%F{cyan}%~%f%b
↪ '
    ;;
    $ZVM_MODE_VISUAL_LINE)
      PROMPT='%F{yellow}%Bpaddy%f%b at %F{magenta}%B%m%f%b in %B%F{cyan}%~%f%b
↪ '
    ;;
    $ZVM_MODE_REPLACE)
      PROMPT='%F{yellow}%Bpaddy%f%b at %F{magenta}%B%m%f%b in %B%F{cyan}%~%f%b
↪'
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

# History substring search
zinit ice wait lucid atload'_history_substring_search_config' \
  ver'dont-overwrite-config' 
zinit light 'zsh-users/zsh-history-substring-search'

### End of Zinit's installer chunk
