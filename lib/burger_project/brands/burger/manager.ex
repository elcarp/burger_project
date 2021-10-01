defmodule BurgerProject.Brands.Burger.Manager do
  alias BurgerProject.{Brands, Repo}

  alias Brands.Burger

  def create(params) do
    %Burger{}
    |> Burger.changeset(params)
    |> Repo.insert()
  end
end
