# Übliche Einstellungen fürs System
export LD_LIBRARY_PATH=$HOME/lib
#export LANG="de_DE@euro"
#export LANG="de_DE"
export CVS_RSH="ssh"
export PATH=$HOME/bin:/usr/local/share/npm/bin:$PATH
export TEXINPUTS=":.:$HOME/texmf"
export TEXEDIT="/usr/bin/vi +%d %s"
export ERL_ROOT=/usr/local/lib/erlang/

export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/teTeX/bin/i386-apple-darwin-current:/opt/local/bin:/Developer/usr/bin:$PATH"

export IRCSERVER=irc.fu-berlin.de
export IRCNAME="Dominic Wäsch"
export IRCNICK=DerMannMitHut

test -e $HOME/.cargo/env && source $HOME/.cargo/env

# Aliase laden
test -e ~/.alias && . ~/.alias

# Prompt und Fenster-Überschrift
case $TERM in
  xterm*)
      precmd () {print -Pn "\e]0;%n@%m:%~\a"}
      export PROMPT="%% "
      ;;
  rxvt*)
      precmd () {print -Pn "\e]0;%n@%m:%~\a"}
      export PROMPT="%% "
      ;;
  *)
      export PROMPT="%n@%M:%B%2~%b> "
      ;;
esac
export RPROMPT="%(0?..<%?>)"

# ZSH-ZLE
bindkey -v			      # Vi-Modus
bindkey "^[[3~" vi-delete-char	      # Delete -> delete
bindkey "^[[8~" vi-end-of-line	      # End -> EOL
bindkey "^[[7~" vi-beginning-of-line  # Home -> BOL


# ZSH-OPTIONEN
autoload -U compinit && compinit -i   # Auto-Vervollständigung
setopt CORRECT			      # Autokorrektur

setopt AUTO_CD			      # ohne "cd" Verz. wechseln
setopt CHASE_DOTS		      # .. auf physikalische Verz.

export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY
setopt BANG_HIST
setopt APPEND_HISTORY
setopt SHARE_HISTORY

setopt nohup			      # nicht Hintergrund-Jobs töten

fortune -se


