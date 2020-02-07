
#basics

PS1='$(tput setaf 40)\u@\h $(tput setaf 28)[\w]\n $(tput sgr0)$(tput setaf 254) -> ';
export PS1;


export EDITOR=vim


# aliases

alias contest='python3 ~/scripts/contest.py'
alias vrc='vim ~/.vimrc'
alias src='source ~/.bashrc'
alias ls='ls --color'


# functions

co() {
	g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o $1 $1.cpp -fsanitize=address -fsanitize=undefined -D__GLIBCXX_DEBUG
}

task() {
	mkdir $1; cd $1; cp ~/tpl.cpp ./$1.cpp 
}

