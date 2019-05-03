defmodule ChatifyApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :chatify_api,
  module: ChatifyApi.Guardian,
  error_handler: ChatifyApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end