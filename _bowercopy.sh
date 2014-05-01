#!/bin/sh

# quick and dirty script to copy the relevant bower files to their appropriate places

# trianglify
cp -f bower_components/trianglify/trianglify.min.js _includes

# glyphicons
cp -f bower_components/bootstrap-sass-official/vendor/assets/fonts/bootstrap/* fonts

# jquery
cp -f bower_components/jquery/dist/jquery.min.js _includes
cp -f bower_components/jquery/dist/jquery.js js
cp -f bower_components/jquery/dist/jquery.min.map js

# bootstrap
cp -f bower_components/bootstrap/dist/js/bootstrap.min.js _includes

# d3 
cp -f bower_components/d3/d3.min.js _includes