source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'sorcery'

# Use sqlite3 as the database for Active Record


gem 'geocoder'

gem 'whenever', :require => false

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# gem 'compass-rails'
gem 'zurb-foundation', '~> 4.0.0'

gem 'carrierwave'

gem "rmagick"




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

group :tools do
  gem 'guard-rspec' # automatically runs our tests whenever there have been changes made to them
end

group :development do
  gem 'rspec-rails', '~> 2.0' # using rspec instead of test unit
  gem 'better_errors' # makes the errors we see in the browser more descriptive
  gem "binding_of_caller"
  gem 'pry-rails'
  gem 'letter_opener'
  gem 'sqlite3'
end

group :test do 
  gem 'rspec-rails', '~> 2.0' # using rspec instead of test unit
  gem "factory_girl_rails" 
  gem "capybara" # needed for our integration tests, which we'll talk about more later
  gem 'sqlite3'
end  

group :production do
  gem 'pg'
end


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
