# blog

Initialize Project
1. Install RVM
2. Install Ruby 2.3.5
3. Create GemSet : rvm 2.3.5@blog --create
4. Install Bundler : gem install bundler
5. Create new project folder
6. Go to project folder
7. In project folder, init bundle : bundle init
8. In project folder : rvm --ruby-version use 2.3.5@blog
9. bundle install
10. go up from project folder
11. init rails project : rails new blog
12. generate devise : rails generate devise:install

How to Use for the first time
1. Install RVM
2. Install Ruby 2.3.5
3. Create GemSet : rvm 2.3.5@blog --create
4. Install Bundler : gem install bundler
5. Clone Project
6. cd blog
7. bundle install
8. cp env.sample .env

How to run apps use:
rails server -b 0.0.0.0

How to Create db migration file:
rails generate migration migration_file_name

How to Migrate database
rake db:migrate

How to Roolback database
rake db:rollback

How to render and inspect params:
render plain: params[:article].inspect

How to Setup rspec:
1. Add the following setup in gem file:
    group :development, :test do
      gem 'rspec-rails', '~> 3.5'
    end

    group :test do
      gem 'factory_girl_rails', '~> 4.0'
      gem 'shoulda-matchers', '~> 3.1'
      gem 'faker'
      gem 'database_cleaner'
    end
2. bundle install
3. Setup rspec : rails generate rspec:install
4. Create factories folder : mkdir spec/factories
