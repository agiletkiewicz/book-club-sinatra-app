source 'http://rubygems.org'

ruby '2.6.1'
gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'pg', '0.20'
gem 'dotenv'
gem 'rake'
gem 'require_all'
gem 'require_relative'
gem 'thin'
gem 'bcrypt'
gem 'sinatra-session', '~> 1.0'
gem 'rack-flash3'

group :development do
  gem 'sqlite3', '~> 1.3.13'
  gem 'shotgun'
  gem 'pry'
  gem 'tux'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end