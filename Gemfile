source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem "rake", "~> 0.9.2"

gem 'annotate', '~> 2.4.1.beta'
gem "carrierwave", "~> 0.5.8"
gem 'mini_magick'
gem "kaminari", "~> 0.13.0"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
gem 'unicorn'
gem "puffer"


# Deploy with Capistrano
gem 'capistrano'
gem 'ajaxful_rating', :git => 'git://github.com/edgarjs/ajaxful-rating.git', :branch => "rails3"

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
group :development do
  gem "awesome_print", "~> 1.0.2"
  gem 'spork', '0.9.0.rc9'
  gem "rspec", "~> 2.8.0"
  gem "rspec-rails", "~> 2.8.1"
  gem "watchr"
  gem 'factory_girl_rails'
  gem "database_cleaner", "~> 0.7.1"
  gem "magic_encoding", "~> 0.0.2"  
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
  gem 'simplecov', :require => false
end