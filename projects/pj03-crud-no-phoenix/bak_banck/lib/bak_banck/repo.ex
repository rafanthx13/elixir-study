defmodule BakBanck.Repo do
  use Ecto.Repo,
    otp_app: :bak_banck,
    adapter: Ecto.Adapters.Postgres
end
