# Load DSL and set up stages #Pushing a change...just to push it!
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# require 'capistrano/bundler'
# require 'capistrano/rails'

# Include tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
# require 'capistrano/rvm'
# require 'capistrano/chruby'
# require 'capistrano/bundler'
# require 'capistrano/rails/assets'
# require 'capistrano/rails/migrations'

require 'capistrano/rbenv'
set :rbenv_type, :user
# on remote svr: ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-linux]
set :rbenv_ruby, '2.3.1'

require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/passenger'


# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
