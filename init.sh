#!/bin/bash
# import multiple remote git repositories to local CODE dir
arr=(https://github.com/williamtrevis99/personal-site-db.git https://github.com/williamtrevis99/personal-site-frontend.git https://github.com/williamtrevis99/personal-site-backend.git)

for gitRepo in ${arr[@]}
do
	echo -e "Git Cloning... $gitRepo"
	cloneCmdRun = $("git clone $gitRepo")
	echo -e "${cloneCmdRun}\n\n"
done

i=0
while [ $i -le 6 ]; do
  for s in / - \\ \|; do
    printf "\r$s"
    sleep .1
  done
  i=$((i+1))
done
