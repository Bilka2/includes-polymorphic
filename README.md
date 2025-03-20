# README

**Latest reproduction can be found as a single file executable at https://github.com/rails/rails/issues/52061.**

To reproduce the bug with this full application instead, run
```
bin/rails db:reset && bin/rails test test/models/work_test.rb
```

This Rails application was generated with
```
bundle exec rails new --skip-docker --skip-keeps -M --skip-action-mailbox --skip-action-text --skip-active-job --skip-active-storage -C -A -J --skip-hotwire --skip-jbuilder --skip-system-test --skip-bootsnap --skip-dev-gems --skip-rubocop --skip-brakeman --skip-ci --skip-kamal --edge includes-polymorphic
```
