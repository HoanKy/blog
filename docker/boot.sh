#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /blog/tmp/pids/server.pid

# Then exec the container"s main process
# bundle exec rails db:create # Only first time
bundle exec rails db:migrate

# Or use CMD (what"s set as CMD in the Dockerfile).
exec "$@"
