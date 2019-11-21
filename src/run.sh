#!/bin/bash
gem install bundler
bundle init
bundle add colorize
bundle add tty-prompt
bundle add terminal-table
bundle add tty-font
bundle install
ruby notes.rb