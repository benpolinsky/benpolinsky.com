# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
# Include default deployment tasks
require "capistrano/deploy"
require 'capistrano/ssh_doctor'
require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rvm'
require 'capistrano/puma'
require "capistrano/scm/git"

install_plugin Capistrano::SCM::Git
install_plugin Capistrano::Puma

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*").each { |r| import r }
Dir.glob('lib/capistrano/**/*.rb').each { |r| import r }