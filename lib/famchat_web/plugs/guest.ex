defmodule FamchatWeb.Plugs.Guest do
  import Plug.Conn
  import Phoenix.Controller

  def init(opts), do: opts

  def call(conn, _opts) do
    if Plug.Conn.get_session(conn, :current_user_id) do
      conn
        |> redirect(to: FamchatWeb.Router.Helpers.page_path(conn, :index))
        |> halt()
    else
      conn
    end
  end
end
