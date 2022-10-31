#!/bin/bash

cd "/Library/Application Support/Tech Suite Deploy/techsuite-deploy" || exit 1
if [[ `git status --porcelain` ]]; then
  git pull
  cd setup || exit 1
  make pkg
  installer -pkg techsuite-deploy-*.pkg -target /
  profiles -I -F "/Library/Application Support/Tech Suite Deploy/techsuite-deploy/Tech Suite.mobileconfig"
fi