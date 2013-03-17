source 'https://rubygems.org'

ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'
gem 'unicorn'

gem 'mongoid',
    git: 'https://github.com/mongoid/mongoid.git'

gem 'devise',
    git: 'https://github.com/plataformatec/devise.git', branch: 'rails4'
    
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'rb-inotify'
  gem 'libnotify'
  gem 'poltergeist'
  gem 'mongoid-rspec',
      git: 'https://github.com/evansagge/mongoid-rspec.git'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'spork'   # load all rspec configuration once, fork when running tests
  gem 'guard-spork'         # get guard and spork to work together appropriately
  #gem 'parallel_tests'
end

gem 'quiet_assets', :group => :development

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
