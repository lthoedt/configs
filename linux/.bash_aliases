#!/bin/bash

alias ls='ls --color=always -rthla'
alias explore='dolphin'
alias xampp='sudo /opt/lampp/xampp'
alias xamppsql='sudo /opt/lampp/bin/mysql'
alias IDEA='nohup snap run intellij-idea-ultimate &'
alias xampp='sudo /opt/lampp/xampp'
alias postman='nohup ~/Programs/Postman/app/Postman &'

M2_HOME='/opt/apache-maven-3.6.3'
PATH="$M2_HOME/bin:$PATH"
export PATH

function updater() {
	sudo apt update
	sudo apt upgrade -y
	sudo apt-get dist-upgrade
	sudo apt autoremove -y
	echo 'Done updating!'
}

function github() {
	cd ~/Documents/github
}

function gitschool() {
	cd ~/Documents/github/tue/yr1/Programming
}

function issLive() {
	~/.iss-background.sh
}

function nmon() {
	~/bash_scripts/nmon_x86_64_ubuntu19
}

function sysmon() {
	nohup gnome-system-monitor&
}

force_color_prompt=yes
color_prompt=yes

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w \[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt 
