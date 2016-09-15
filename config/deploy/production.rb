require 'pry-rails'

username = ENV['PRODUCTION_USERNAME']
servername = ENV['SERVER_NAME']

set :branch, 'deploy'
set :passenger_restart_with_touch, true
role :app, %W{#{username}@#{servername}}
role :web, %W{#{username}@#{servername}}
role :db,  %W{#{username}@#{servername}}

# Define server(s)
server "#{servername}", user: "#{username}", roles: %w{web}

# The server-based syntax can be used to override options:
# ------------------------------------
set :ssh_options, {
  forward_agent: true,
  keys: File.join(ENV["HOME"], ".ssh", "id_rsa")
}
