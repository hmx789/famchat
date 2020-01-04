defmodule Famchat.Repo do
  use Ecto.Repo,
    otp_app: :famchat,
    adapter: Ecto.Adapters.Postgres
end
