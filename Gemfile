source 'https://rubygems.org'
# ruby '2.1.1'
# ruby-gemset=railstutorial_rails_4_0

gem 'rails', '>=4.0.4'
gem 'bootstrap-sass', '~>2.3.2.0'
gem 'bcrypt-ruby'
gem 'faker'
gem 'faker-japanese'
gem 'will_paginate', '>=3.0.4'
gem 'bootstrap-will_paginate', '>=0.0.9'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  # The following optional lines are part of the advanced setup.
  gem 'guard-rspec'
  gem 'spork-rails', '>=4.0.0'
  gem 'guard-spork', '>=1.5.1'
  gem 'childprocess', '>=0.3.6'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
  # gem 'pry-debugger'
  gem 'pry-byebug'
  gem 'pry-coolline'
  gem 'pry-doc'
  gem 'awesome_print'
  gem 'hirb'
  gem 'rubocop'

  gem 'metric_fu'

  gem 'rack-mini-profiler'
  gem 'flamegraph'
end

group :test do
  gem 'selenium-webdriver', '>=2.35.1'
  gem 'capybara', '>=2.1.0'
  gem 'factory_girl_rails', '>=4.2.1'
  gem 'cucumber-rails', '>=1.4.0', require: false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
  gem 'coveralls', require: false

  # Uncomment this line on OS X.
  # gem 'growl', '>=1.0.3'

  # Uncomment these lines on Linux.
  # gem 'libnotify', '>=0.8.0'

  # Uncomment these lines on Windows.
  # gem 'rb-notifu', '>=0.0.4'
  # gem 'win32console', '>=1.3.2'
  # gem 'wdm', '>=0.1.0'
end

gem 'sass-rails', '>=4.0.1'
gem 'uglifier', '>=2.1.1'
gem 'coffee-rails', '>=4.0.1'
gem 'jquery-rails', '>=3.0.4'
gem 'turbolinks', '>=1.1.1'
gem 'jbuilder', '>=1.0.2'

group :doc do
  gem 'sdoc', '>=0.3.20', require: false
end

group :production do
  gem 'pg', '>=0.15.1'
  gem 'rails_12factor', '>=0.0.2'
end
