#!/bin/bash

cd $HOME/Desktop || exit 1

rm -rf "$HOME/Desktop/Pro Tools IO Configuration" "$HOME/Desktop/Dante Presets"
ln -s '/Users/Shared/Pro Tools IO Configuration/' "$HOME/Desktop"
ln -s '/Users/Shared/Dante Presets/' "$HOME/Desktop"