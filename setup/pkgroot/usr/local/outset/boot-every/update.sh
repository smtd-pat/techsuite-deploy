#!/bin/bash

cd "/Shared/.ts-deploy/techsuite-deploy" || exit 1
if [[ `git status --porcelain` ]]; then
  git pull
  cd setup || exit 1
  make pkg
  installer -pkg techsuite-deploy-*.pkg -target /
fi