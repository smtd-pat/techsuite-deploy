#!/bin/bash

cd $HOME/Desktop || exit 1

rm -rf "$HOME/Desktop/Log Out.app"
cp -R "/Applications/Log Out.app" "$HOME/Desktop/"