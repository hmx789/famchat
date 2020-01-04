defmodule FamchatWeb.Router do
  use FamchatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FamchatWeb do
    pipe_through [:browser, FamchatWeb.Plugs.Guest]

    resources "/register", UserController, only: [:create, :new]
    get "/login", SessionController, :new
    post "/login", SessionController, :create
  end

  scope "/", FamchatWeb do
    pipe_through [:browser, FamchatWeb.Plugs.Auth]

    delete "/logout", SessionController, :delete
    get "/", PageController, :index
  end
  # Other scopes may use custom stacks.
  # scope "/api", FamchatWeb do
  #   pipe_through :api
  # end
end
