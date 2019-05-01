defmodule ChatifyApi.Repo do
  use Ecto.Repo,
    otp_app: :chatify_api,
    adapter: Ecto.Adapters.Postgres
end
