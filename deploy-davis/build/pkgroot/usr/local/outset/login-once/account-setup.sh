#!/bin/bash

cd $HOME/Desktop || exit 1

rm -rf "$HOME/Desktop/Dante Presets"
ln -s '/Users/Shared/Dante Presets/' "$HOME/Desktop"