source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'rails_12factor', group: :production
gem 'responders'
gem 'awesome_print'
gem 'sprockets-es6'
gem 'bcrypt', '~> 3.1.7'
gem "validate_url"
gem 'listen', '~> 3.1.5'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'rack-cors', :require => 'rack/cors'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'pry'
  gem 'simplecov', :require => false
  gem 'spring'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver', '~> 2.53.4'
end

group :development do
  gem 'web-console', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
