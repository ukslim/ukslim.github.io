#!/bin/sh
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
exec bundle exec jekyll serve "$@"
