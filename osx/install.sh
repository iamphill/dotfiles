#!/bin/sh

# For mac, I like to have a nice little icon for my projects folder :-)
git clone git@github.com:gregoryzuckerman/githubicons.git tmp/project-icon

./tmp/project-icon/setfileicon tmp/project-icon/icns/icon.icns ~/Projects

# Clean up after oursevles!
rm -rf tmp/project-icon
