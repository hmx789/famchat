# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :famchat,
  ecto_repos: [Famchat.Repo]

# Configures the endpoint
config :famchat, FamchatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/hBguiutthZwEHU2f5A7SnfRgNCe1sv/774R5nPc8r6tTqXMG3CT0uE5wblw5zA/",
  render_errors: [view: FamchatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Famchat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
