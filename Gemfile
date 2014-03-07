source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails', '~> 4.1.0.rc1'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass'
gem 'devise'
gem 'figaro', github: 'laserlemon/figaro'
gem 'pg'
gem 'thin'

# gem 'activeadmin'
gem 'faker'
gem 'redis'

gem 'sidekiq', '2.15.2'
gem 'sinatra', '>= 1.3.0', require: false
gem 'whenever', '~> 0.8.4', require: false

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'annotate'
  gem 'rubocop', require: false
  gem 'meta_request'
  gem 'bullet'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-spring'
  gem 'terminal-notifier-guard'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'byebug'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'simplecov', require: false
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'capybara-webkit'
  gem 'selenium-webdriver'
  gem 'headless'
  gem 'fakeredis'
end

group :production do
  gem 'rails_12factor', '0.0.2'
end
