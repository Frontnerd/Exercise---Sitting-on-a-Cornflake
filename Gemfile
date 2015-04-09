source 'https://rubygems.org'

# TODO: bundle with
# ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', github: 'rails/rails', branch: '4-0-stable'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


# haml
gem "haml-rails"
#  rb to haml 
gem 'hpricot', '~> 0.8.6'
gem 'ruby_parser', '~> 2.3.1'

## TWEETER BOOTSTRAP
gem 'compass'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'autoprefixer-rails'
gem 'foundation-rails'

# devise for user authentication
gem 'devise'

# for user avatar
gem 'rmagick', '2.13.2'
gem "mini_magick"
gem 'carrierwave'

# file upload with paperclip
gem "paperclip", "~> 4.1"

# google maps
gem 'underscore-rails'
gem "geocoder"
gem 'gmaps4rails'

# test
group :development, :test do

  gem 'sqlite3'

  gem 'rspec-rails'
  gem "factory_girl_rails"
  gem 'capybara'
  gem "faker"
  gem 'debugger'
  gem 'shoulda-matchers', require: false
end

# HEROKU DEPLOY
group :production do 
  gem 'pg' 
end

gem 'puma'

gem 'rails_12factor'


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
