#!/bin/bash

# Load RVM, if you are using it
 [[ -s /home/jstanfield/.rvm/scripts/rvm ]] && source /home/jstanfield/.rvm/scripts/rvm

 # Add rvm gems and nginx to the path
 export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

cd /home/jstanfield/projects/fuzzy-avenger
bundle exec ruby /home/jstanfield/projects/fuzzy-avenger/translator.rb
