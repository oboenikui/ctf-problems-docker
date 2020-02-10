#!/bin/sh

mysql -e "CREATE DATABASE shooter_staging" -u $SHOOTER_DATABASE_USERNAME -p $SHOOTER_DATABASE_PASSWORD -h $SHOOTER_DATABASE_HOST
bundle exec rails db:migrate
bundle exec rake db:seed

exec "$@"