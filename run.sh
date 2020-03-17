#!/bin/bash -ex
git pull --ff-only
bundle install
LC_ALL="C.UTF-8" jekyll serve --host=0.0.0.0 --port=80 --baseurl=/jittor
