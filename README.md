# Hello world!
## Adding a new Component
1. Update *git-pull.sh* file with new Component as follows:
```sh
CURRENT_PROJECT=$1
cd ..
# Change:
REPOSITORIES=(Outloud.QuizService Outloud.Common)
# Into:
REPOSITORIES=(Outloud.QuizService Outloud.Common Outloud.NewComponent)
for REPOSITORY in ${REPOSITORIES[*]}
do
    if [ "$CURRENT_PROJECT" != "$REPOSITORY" ] ; then
        git clone https://github.com/out-loud/$REPOSITORY
    fi
done
```

2. Update *docker-compose.ci.yml* files by adding new component project and it's test project as follows:
```yml
version: '3.4'
services:
  outloud.new.service:
    image: outloud.new.service
    build:
      context: ..
      dockerfile: Outloud.NewService/Dockerfile
    environment:
    ports:
      - '5002:5002'

  outloud.new.service.tests:
    image: outloud.new.service.tests
    build:
      context: ..
      dockerfile: Outloud.NewService/Dockerfile
      target: test
```