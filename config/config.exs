# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :burger_project,
  ecto_repos: [BurgerProject.Repo]

# Configures the endpoint
config :burger_project, BurgerProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Rqjq0QQnRk0wIrYxwDjoRvqTEYGUa1k/WXhy6OuD8SB30dXNtjwg5syVpGk9jwCb",
  render_errors: [view: BurgerProjectWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BurgerProject.PubSub,
  live_view: [signing_salt: "dsHgkfKF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
