defmodule BurgerProject.Brands.Locations.Manager do
  alias BurgerProject.{Brands, Repo}

  alias Brands.Locations

  def create(params) do
    %Locations{}
    |> Locations.changeset(params)
    |> Repo.insert()
  end
end
