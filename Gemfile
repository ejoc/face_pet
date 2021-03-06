source 'https://rubygems.org'

ruby "2.3.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# mongoid
gem 'simple_enum', '~> 2.3', require: 'simple_enum/mongoid'
gem 'mini_magick'
gem 'mongoid', '~> 6.0.0.rc0'
gem 'carrierwave-mongoid', '~> 0.10.0'
gem 'mongoid-grid_fs', '~> 2.3'
gem 'mongoid_search'

# paginate
# gem 'kaminari', '~> 0.16.3'
gem 'kaminari', '~> 0.17.0'
# gem 'kaminari', :git => "git://github.com/amatsuda/kaminari.git", :branch => 'master'
gem 'bootstrap-kaminari-views'


gem 'devise', '~> 4.2'

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'

# assest
gem 'font-awesome-rails', '~> 4.5', '>= 4.5.0.1'
gem 'formvalidation-rails', '~> 0.7.1'
gem 'sweetalert-rails'
gem 'jquery-turbolinks', '~> 2.1'

source 'https://rails-assets.org' do
  gem 'rails-assets-metisMenu'
  gem 'rails-assets-chosen'
	gem 'rails-assets-fa-bootstrap-chosen'
	gem 'rails-assets-toastr'
  gem 'rails-assets-bootstrap-fileinput'
end

gem 'rails_12factor', group: :production