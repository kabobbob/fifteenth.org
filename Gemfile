source 'http://rubygems.org'

# Bundle edge Rails instead:
gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'pg'

# Deploy with Capistrano
gem 'capistrano'
gem 'capistrano-ext'

group :development, :test do
  gem 'webrat'
  gem 'ruby-debug19'
end

group :staging, :production do
  gem 'passenger'
end
