defmodule BurgerProject.Brands.Locations.Manager do
  alias BurgerProject.Repo

  alias BurgerProject.Brands.{
    Burger,
    Locations
  }

  def create(%Burger{} = burger, attrs) do
    # %Room{building_id: building_id}
    Ecto.build_assoc(burger, :locations)
    |> Locations.changeset(attrs)
    |> Repo.insert()
  end
end
