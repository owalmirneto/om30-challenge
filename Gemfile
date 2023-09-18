# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(".ruby-version").strip

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.8"
# https://github.com/svenfuchs/rails-i18n#configuration
gem "rails-i18n", "~> 7.0"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"
# https://github.com/rails/jsbundling-rails#javascript-bundling-for-rails
gem "jsbundling-rails", "~> 1.2"
# https://github.com/rails/cssbundling-rails#installation
gem "cssbundling-rails", "~> 1.3"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# https://github.com/sass/sassc-rails#installation
gem "sassc-rails", "~> 2.1"
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  # https://github.com/bkeepers/dotenv#rails
  gem "dotenv-rails", "~> 2.8"
  # https://github.com/rweng/pry-rails#usage
  gem "pry-rails", "~> 0.3.9"
  # https://github.com/deivid-rodriguez/pry-byebug#commands
  gem "pry-byebug", "~> 3.10"
  # https://github.com/presidentbeef/brakeman
  gem "brakeman", "~> 6.0", require: false
  # https://github.com/rubocop-hq/rubocop-rails#usage
  gem "rubocop-rails", "~> 2.20"
  # https://github.com/rubocop-hq/rubocop-performance#usage
  gem "rubocop-performance", "~> 1.19"
  # https://github.com/rubocop/rubocop-capybara#rubocop-configuration-file
  gem "rubocop-capybara", "~> 2.18"
  # https://github.com/backus/rubocop-rspec
  gem "rubocop-rspec", "~> 2.23"
  # https://github.com/rubocop/rubocop-factory_bot#usage
  gem "rubocop-factory_bot", "~> 2.23"
  # https://github.com/Shopify/erb-lint#configuration
  gem "erb_lint", require: false
  # https://github.com/thoughtbot/factory_bot_rails
  gem "factory_bot_rails", "~> 6.2"
  # https://github.com/stympy/faker
  gem "faker", "~> 3.2"
  # https://github.com/bernardo/cpf_faker#usage-
  gem "cpf_faker", "~> 1.3"
  # https://github.com/thoughtbot/shoulda-matchers
  gem "shoulda-matchers", "~> 5.3"
end

group :test do
  # https://github.com/rspec/rspec-rails#installation
  gem "rspec-rails", "~> 6.0"
  # https://github.com/DatabaseCleaner/database_cleaner
  gem "database_cleaner", "~> 2.0"
  # https://github.com/teamcapybara/capybara#setup
  gem "capybara", "~> 3.39"
  # https://github.com/vicentllongo/simplecov-json#usage
  gem "simplecov-json", "~> 0.2.3"
  # https://github.com/dashingrocket/simplecov-cobertura#usage
  gem "simplecov-cobertura", "~> 2.1"
  # https://github.com/bblimke/webmock#rspec
  gem "webmock", "~> 3.19"
end

# http://github.com/owalmirneto/form_ease
gem "form_ease", "~> 0.0.3"
# https://github.com/owalmirneto/cns_brazil#usage
gem "cns_brazil", github: "owalmirneto/cns_brazil"
# https://github.com/owalmirneto/enuminator#using-with-rails
gem "enuminator", "~> 0.0.3"
# https://github.com/collectiveidea/interactor-rails#usage
gem "interactor-rails", "~> 2.2"
# https://github.com/owalmirneto/queries#usage
gem "ows-queries", "~> 0.1.6"
# https://github.com/rails-api/active_model_serializers/tree/0-10-stable#getting-started
gem "active_model_serializers", "~> 0.10.13"
# https://github.com/sidekiq/sidekiq/wiki/Getting-Started
gem "sidekiq", "~> 7.1"
