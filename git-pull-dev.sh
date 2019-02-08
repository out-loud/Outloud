#!/bin/bash
cd ..
REPOSITORIES=(Outloud.Api Outloud.QuizService Outloud.ScoreService Outloud.Common Outloud.Client)
for REPOSITORY in ${REPOSITORIES[*]}
do
     git clone https://github.com/out-loud/$REPOSITORY
done
read -p "Press enter to continue"