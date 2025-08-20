#!/bin/bash

# Switch to supported node version
export NVM_DIR="$HOME/.config/nvm"
source $NVM_DIR/nvm.sh
nvm use 22.13.1

# Install npm, yarn, gulp, gscan, and Ghost CLI
npm install -g corepack
npm install -g gulp-cli
npm install -g gscan
npm install -g ghost-cli@latest

# Install project dependencies
npm install

# Build the theme
yarn gulp build

# Install a test Ghost site
ghost install local --dir ../test-site

# Symlink the theme directory into local Ghost install
ln -sfn $PWD ../test-site/content/themes/source

# Restart the test ghost site
ghost restart --dir ../test-site

# Visit the test site at http://localhost:2368
