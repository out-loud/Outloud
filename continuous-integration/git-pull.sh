#!/bin/bash

CURRENT_PROJECT=$1
cd ..
REPOSITORIES=(Outloud.QuizService)
for REPOSITORY in ${REPOSITORIES[*]}
do
    if [ "$CURRENT_PROJECT" != "$REPOSITORY" ] ; then
        git clone https://github.com/out-loud/$REPOSITORY
    fi
done