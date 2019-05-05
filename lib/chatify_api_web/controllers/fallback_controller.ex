defmodule ChatifyApiWeb.FallbackController do
  @moduledoc """
  Translates controller action results into valid `Plug.Conn` responses.

  See `Phoenix.Controller.action_fallback/1` for more details.
  """
  use ChatifyApiWeb, :controller

  def call(conn, {:error, :unathorized}) do
    conn
    |> put_status(:unathorized)
    |> json(%{error: "Login error"})
  end

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(ChatifyApiWeb.ChangesetView)
    |> render("error.json", changeset: changeset)
  end

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(ChatifyApiWeb.ErrorView)
    |> render(:"404")
  end

end
