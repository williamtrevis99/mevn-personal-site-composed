#!/bin/bash
# import multiple remote git repositories to local CODE dir

set -e

trap '[[ -t 1 ]] && tput sgr0' DEBUG

# shellcheck disable=SC2006
green=`tput setaf 2`
# shellcheck disable=SC2006
red=`tput setaf 1`

arr=("personal-site-frontend"
    "personal-site-backend"
    "personal-site-reverse-proxy"
)

# shellcheck disable=SC2068
for gitRepo in ${arr[@]}
do
	echo -e "Git Cloning... $gitRepo"
	if ! git clone "https://github.com/williamtrevis99/$gitRepo.git"
	then
      echo -e "\n${red}-- Git Clone Failed --\n"
    else
      (cd "$gitRepo" && git checkout dev)
      echo -e "\n${green}-- Git Clone Successfull --\n"
    fi
done

