#!/bin/bash
# IF you are using another domain to push your code... 

pkill -x ssh-agent 
sleep 1
echo "ssh-agents killed"
eval $(ssh-agent)
sleep 1 
echo "ssh-agent inicialized"
ssh-add ~/.ssh/thinkpad_github
sleep 1
echo "ssh-key-id added"
git add . 
echo "all changes added to commit state"
git commit -m "They don't care About their clients!!!"
git push git@github.com:odicforcesounds/Webmobril_Tribute
echo "Push completed"
sleep 3
