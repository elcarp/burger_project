defmodule BurgerProject.Repo do
  use Ecto.Repo,
    otp_app: :burger_project,
    adapter: Ecto.Adapters.Postgres
end
