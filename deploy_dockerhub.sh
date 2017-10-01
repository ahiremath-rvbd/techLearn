#!/bin/sh
docker login -e $anand.30hiremath@gmail.com -u $ahiremath-rvbd -p $1pi05mcapes
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
docker push $TRAVIS_REPO_SLUG
