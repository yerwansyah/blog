# frozen_string_literal: true
source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
ruby "2.3.5"
# gem "rails"
gem 'rails' , '5.1.4'

gem 'jbuilder'
gem 'devise'
gem 'pundit'
gem 'pry'
gem 'dotenv-rails'
gem 'turbolinks'
gem 'pg'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'travis'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.5'
end

group :test do
  gem 'factory_girl_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'faker'
  gem 'database_cleaner'
end

group :production do
  gem 'uglifier'
end
