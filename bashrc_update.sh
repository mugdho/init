#!/bin/bash

read -r -d '' TEXT << EOM
# Don't put duplicate lines in the .bash_history
export HISTCONTROL=ignoredups
# Adjust LINES and COLUMNS in case we resize the window
shopt -s checkwinsize
# Keep a very large history of commands we've typed on disk
export HISTFILESIZE=5000000
# Keep moderately large number of commands in memory
export HISTSIZE=2000
## Put dots in tab-complete
shopt -s dotglob
## Force multi-line commands into single for history
shopt -s cmdhist
#correct spelling errors in cd pathnames
shopt -s cdspell
## Send hup to everyting on exit - speeds up scp hangs
shopt -s huponexit
## Default umask
umask 0022

## The all-important prompt
export PS1="[\[\033[0m\]\u@\[\033[1;31m\]\h \[\033[0;32m\]\w\[\033[0m\]] "
eval "LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;4
2:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.b
z2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga
=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=0
1;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:';
export LS_COLORS"

export PAGER=less
export LESS="-x4 -M -X -F -Q -W"
alias ls='ls --color'
EOM

echo "$TEXT" >> ~/.bashrc
echo "$TEXT" >> ~/.profile

