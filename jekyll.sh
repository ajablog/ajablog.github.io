#!/bin/bash
# Local preview at http://localhost:4000
# Uses Homebrew's Ruby, not the old Ruby that ships with macOS.
set -e
for p in /opt/homebrew/opt/ruby/bin /usr/local/opt/ruby/bin; do
  [ -d "$p" ] && export PATH="$p:$PATH"
done
cd "$(dirname "$0")"
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve --livereload
