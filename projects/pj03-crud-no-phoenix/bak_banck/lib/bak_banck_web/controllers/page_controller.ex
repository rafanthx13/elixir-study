defmodule BakBanckWeb.PageController do
  use BakBanckWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
