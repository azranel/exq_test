# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :background_workers,
  ecto_repos: [BackgroundWorkers.Repo]

# Configures the endpoint
config :background_workers, BackgroundWorkers.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IwVdIuUvtIYY4AF7YhVa5RpVN4j5k5qL9WzMKFIiTAy4y5qKHBrgxZVkS7Sp+G5W",
  render_errors: [view: BackgroundWorkers.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BackgroundWorkers.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
