#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# --- ALIASES --- #
# alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias q3d_gal='micromamba activate q3d_env && code ~/Documents/GALENA'
alias q3d_pro='micromamba activate q3d_env && code ~/Documents/Projects'

# Credit to OMARCHY for the following:
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


# --- STARTUP --- #
fastfetch

eval "$(starship init bash)"

set visible-stats on



# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/home/mkuntz/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/mkuntz/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
