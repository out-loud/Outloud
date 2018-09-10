#!/bin/bash
cd ..
REPOSITORIES=(Outloud.QuizService)
for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Pulling repository: $REPOSITORY
	 echo ========================================================
     git clone https://github.com/out-loud/$REPOSITORY
done
read -p "Press enter to continue"