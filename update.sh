#!/bin/sh

git pull
date >> trigger-build.txt
git add trigger-build.txt
git commit -m "Trigger build"
git push
