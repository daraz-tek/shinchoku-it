source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '>= 5.0.0.rc1', '< 5.1'

group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'puma', '~> 3.0'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'slim-rails'
gem 'bootstrap-sass'
gem 'bootstrap-sass-extras'
gem 'bootstrap_form'
gem 'font-awesome-rails'
gem 'rack-utf8_sanitizer'
gem 'omniauth'
gem 'omniauth-slack'
gem 'qiita-markdown'
gem 'activemodel-serializers-xml' # for draper rails5
gem 'draper', github: 'drapergem/draper', branch: 'rails-5'
gem 'autosize-rails'
gem 'gretel'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-doc', require: false
  gem 'pry-coolline'
  gem 'pry-byebug', platforms: [:mri]
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'awesome_print'
  gem 'minitest-rails', '3.0.0.rc1'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
  gem 'annotate'
  gem 'quiet_assets'
  gem 'rubocop', require: false
  gem 'meta_request'
  gem 'rack-mini-profiler'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-minitest'
end

group :test do
  gem 'minitest-rails-capybara'
  gem 'minitest-power_assert'
  gem 'minitest-bang'
  gem 'minitest-stub_any_instance'
end

group :memcache do
  gem 'dalli'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
