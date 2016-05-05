#!/bin/bash

BASHRC=`curl -s https://raw.githubusercontent.com/mugdho/init/master/bashrc`

echo "$BASHRC" >> .bashrc
echo "$BASHRC" >> .profile 

curl -so .screenrc https://raw.githubusercontent.com/mugdho/init/master/screenrc
