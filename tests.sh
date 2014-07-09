#!/bin/bash -e
export DB

for RUBY in 2.1.2 jruby-1.7.12 ; do
  rbenv local $RUBY
  for DB in mysql postgresql sqlite ; do
    echo "$DB | $(ruby -v)"
    appraisal rake test
  done
done
