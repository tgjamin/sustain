#! /bin/sh
docker run --rm -v $PWD:/srv/jekyll \
  -it jekyll/jekyll:3.5 \
  jekyll build
