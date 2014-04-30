#!/bin/sh

# quick and dirty script to copy the relevant bower files to their appropriate places

# trianglify
cp -f bower_components/trianglify/trianglify.min.js _includes

# glyphicons
cp -f bower_components/bootstrap-sass-official/vendor/assets/fonts/bootstrap/* fonts