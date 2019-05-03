# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chatify_api,
  ecto_repos: [ChatifyApi.Repo]

# Configures the endpoint
config :chatify_api, ChatifyApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YkKaikJJuBqRQNobZHMyib7153jJ6jbUOGChng1gM0B8vs1StolrqsWSOGrchJbV",
  render_errors: [view: ChatifyApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ChatifyApi.PubSub, adapter: Phoenix.PubSub.PG2]

config :chatify_api, ChatifyApi.Guardian,
  issuer: "ChatifyApi",
  secret_key: "LIj3MJBJGDg4Ycv4nkWWc9IoDibXnuWhYSo8PZYTkcZjCeDF0IpHDRJ6HmUN9sLk"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
