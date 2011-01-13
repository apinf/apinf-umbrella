# Setup our multi-stage environments.
require "capistrano/ext/multistage"

require "capistrano_nrel_ext/recipes/defaults"
require "capistrano_nrel_ext/recipes/haproxy"
require "capistrano_nrel_ext/recipes/supervisor"

# Set the application being deployed.
set :application, "developer_router"

# Bundle gems for the auth_proxy app.
set :gem_bundler_apps, [
  "auth_proxy",
]
