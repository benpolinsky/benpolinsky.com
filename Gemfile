source 'http://rubygems.org'

gem 'rails', '~> 5.1'
gem 'webpacker', github: 'rails/webpacker'
gem 'pg', '~> 0.15'
gem 'sass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails'
gem 'thin'

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem "autoprefixer-rails"

gem 'turbolinks'

gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'bootstrap_form'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

gem 'active_link_to'
gem "flutie"
gem 'parsley-rails'
gem 'ranked-model'

gem 'carrierwave'
gem "fog"
gem 'xmlrpc', '0.3.0'
gem 'friendly_id'
gem 'figaro'
gem 'rmagick'
gem 'devise', github: 'plataformatec/devise', branch: "master"


# gem 'bp_custom_fields', github: 'benpolinsky/bp_custom_fields'
gem 'error_list_for' 

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem "factory_girl_rails"
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'listen'
end

group :development do
  gem 'capistrano',         require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano3-puma',   require: false
  gem 'capistrano-maintenance', '~> 1.0', require: false
  gem 'capistrano-ssh-doctor', '~> 1.0'
  
end

group :production do
  gem 'puma'
end


