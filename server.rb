require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'thin'
end

app = ->(_) { ['200', {'Content-Type' => 'text/html'}, ['Hello, World!']] }
Thin::Server.new('localhost', 3000, app, {}).start
