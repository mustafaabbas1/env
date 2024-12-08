# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done!
	return
fi

# Some useful bash options.
set -o notify           # report the status of completed jobs immediately.
set -o ignoreeof        # don't log out after Ctrl-D.
#set -o xtrace          # useful for debugging scripts!
#set -o vi              # bash-style command editing, instead of emacs.
#set -o pipefail        # return right-most non-zero status in a command pipe.

shopt -s checkhash      # check that commands in the hash table still exist.
shopt -s checkwinsize   # keep LINES and COLUMNS up-to-date.

shopt -s extglob        # enable extended pathname completion.
shopt -s cdspell        # expand variables that are directories after 'cd'.
shopt -s no_empty_cmd_completion 2>/dev/null
shopt -s sourcepath     # use PATH to find arguments to source.
shopt -s nocaseglob     # case-insensitive pathname expansion.
shopt -s hostcomplete   # perform hostname completion.

shopt -s cmdhist        # save multi-line commands as single commands in history.
shopt -s histappend     # append to the history file, instead of replacing it.
shopt -s histreedit     # allow failed history substitutions to be re-edited.
shopt -s histverify     # pass history substitutions to the readline buffer before exec.

# Setup some environment variables.
#export EDITOR='nano'
export PAGER='less'
alias more='less'

# # For vim...
export EDITOR='vim'
export VISUAL='gvim -f'

# # For emacs...
# export EDITOR='emacs --no-windows'
# export VISUAL='emacs'
# alias em='emacs'

# Tailor 'less'.
export LESSCHARSET='utf-8'
export LESSOPEN='|lesspipe.sh %s 2>&-'
export LESS='-i -W -x4 -z-4 --no-init -R '

# Tailor ls.
alias l1='/usr/bin/ls -1'       # long format.
alias ls='ls --color=auto -hF'  # color, human-readable sizes, and file-type indicators.
alias l='ls -l'                 # long format.
alias la='ls -A'                # include dot-files.
alias ll='ls -Al'               # long format, w/ dot-files.
alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'              # sort by change time.
alias lu='ls -lur'              # sort by access time.  
alias lr='ls -lR'               # recursive ls.
alias lt='ls -ltr'              # sort by date.
alias lm='ls -Al | less'        # pipe through 'more' (i.e., less).
alias du='du --max-depth=1 -h -c'

# Tailor some other commands.
alias tree='tree -Csu'          # nice alternative to 'ls'
alias echo='echo -e'            # enable backslash escapes.
alias ssh='ssh -Y'
