defmodule ChatifyApiWeb.Router do
  use ChatifyApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", ChatifyApiWeb do
    pipe_through :api

    resources "/users", UserController, only: [:create, :show]
  end
end
