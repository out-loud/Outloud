#!/bin/bash
REPOSITORIES=(Outloud.QuizService)
for REPOSITORY in ${REPOSITORIES[*]}
do
     git clone https://github.com/out-loud/$REPOSITORY
done