source 'http://rubygems.org'

gem 'rails', '3.0.7'

gem 'sqlite3'
gem 'haml'
gem 'jquery-rails', '>= 0.2.6'

group :development do
  gem 'mongrel'
end

group :test do
  gem 'factory_girl_rails', '1.0.1'
  
  #Unit tests
  gem 'test-unit', '2.1.1', :require => false
  gem 'shoulda', "2.11.3"
  
  #Integration tests
  gem 'capybara', '0.4.1.2'
  gem 'capybara-zombie', :git => "https://github.com/plataformatec/capybara-zombie.git"
  gem 'webrat', '0.7.3'
  gem 'launchy'

  gem 'mocha', '>=0.9.11', :require => false
  gem 'timecop'
end
