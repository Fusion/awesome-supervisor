#!/bin/bash
export HOME=$HOME
RBENV_ROOT=$HOME/.rbenv
export PATH="$RBENV_ROOT/bin:$RBENV_ROOT/shims:$PATH"
ruby /home/ubuntu/.rbenv/versions/2.0.0-p353/bin/sidekiq -e production -d -C $HOME/www/appname/config/sidekiq.yml

# Alternative way
# cd /home/rails && RAILS_ENV=production bundle exec sidekiq -e production -d -C /home/rails/config/sidekiq.yml
