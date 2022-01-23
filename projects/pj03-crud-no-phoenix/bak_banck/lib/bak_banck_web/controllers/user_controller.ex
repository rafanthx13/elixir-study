defmodule BakBanckWeb.UserController do
  use BakBanckWeb, :controller

  alias BakBanck.Banks
  alias BakBanck.Banks.User

  action_fallback BakBanckWeb.FallbackController

  def index(conn, _params) do
    users = Banks.list_users()
    render(conn, "index.json", users: users)
  end

  def create(conn, %{"user" => user_params}) do
    with {:ok, %User{} = user} <- Banks.create_user(user_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.user_path(conn, :show, user))
      |> render("show.json", user: user)
    end
  end

  def show(conn, %{"id" => id}) do
    user = Banks.get_user!(id)
    render(conn, "show.json", user: user)
  end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = Banks.get_user!(id)

    with {:ok, %User{} = user} <- Banks.update_user(user, user_params) do
      render(conn, "show.json", user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    user = Banks.get_user!(id)

    with {:ok, %User{}} <- Banks.delete_user(user) do
      send_resp(conn, :no_content, "")
    end
  end
end
