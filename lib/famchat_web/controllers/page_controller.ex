defmodule FamchatWeb.PageController do
  use FamchatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
