#workers Integer(ENV['WEB_CONCURRENCY'] || 2)
#threads_count = Integer(ENV['MAX_THREADS'] || 5)

# number of workers available (use grep -c processor /proc/cpuinfo to verify)
workers 2

# min and max threads per worker
threads 1, 6

app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"

# Default to development TODO: create separate production configuration
rails_env = ENV['RAILS_ENV'] || "development"
environment rails_env

# Set up socket location 
bind "tcp://127.0.0.1:9000"

#TODO: move to separate production configuration
#bind "unix://#{shared_dir}/sockets/puma.sock"

# Logging
stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", true

# Set master PID and state locations
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
activate_control_app

on_worker_boot do
  require "active_record"
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
end
