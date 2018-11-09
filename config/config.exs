# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chatio,
  ecto_repos: [Chatio.Repo]

# Configures the endpoint
config :chatio, ChatioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zZtf26PyWswXyoLXPMz2kBldyyLH049mEWjsMgTgYN0r+gAiMZe96thOXvypMeVP",
  render_errors: [view: ChatioWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chatio.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
