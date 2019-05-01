use Mix.Config

config :chatify_api, ChatifyApiWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime

config :chatify_api, ChatifyApi.Repo,
  username: "alex",
  password: "",
  database: "chatify_dev",
  hostname: "localhost",
  pool_size: 10
