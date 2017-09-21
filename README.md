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

How to use for regularly
1. rvm use 2.3.5@blog


How to Create db migration file:
rails generate migration migration_file_name

How to Migrate database
rake db:migrate

How to Roolback database
rake db:rollback
