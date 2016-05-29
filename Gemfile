source 'https://rubygems.org'

# explicitly sets this version of ruby to be used for this app
# ruby '2.2.4'
ruby '2.3.1'

gem 'font-awesome-sass'
gem 'bootstrap-sass'
gem 'simple_form'
gem 'carrierwave'
gem 'seed_dump'
gem 'devise'
gem 'activeadmin', github: 'activeadmin'



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '~> 2.0', group: :development

# Added per digital ocean community tutorial @ https://www.digitalocean.com/community/tutorials/deploying-a-rails-app-on-ubuntu-14-04-with-capistrano-nginx-and-puma
# Puma has already been added to the production group below, per the Hartl tutorial
# group :development do
#     gem 'capistrano',         require: false
#     gem 'capistrano-rvm',     require: false
#     gem 'capistrano-rails',   require: false
#     gem 'capistrano-bundler', require: false
#     gem 'capistrano3-puma',   require: false
# end

# Added per gorails.com tutuorial @ gorails.com/deploy/ubunt/14.04
## Commenting out Puma since we are using Nginx and Passenger
gem 'capistrano', '~> 3.4.0'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1.1'

# Add this if you're using rbenv
# gem 'capistrano-rbenv', github: "capistrano/rbenv"

gem 'capistrano-rvm', github: "capistrano/rvm"

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.9'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '3.4.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.1.3'
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'puma',           '3.1.0'
end

