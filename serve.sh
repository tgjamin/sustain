#! /bin/sh
docker run --rm -v $PWD:/srv/jekyll -p "3000:3000" -it jekyll/jekyll:3.5 jekyll serve
