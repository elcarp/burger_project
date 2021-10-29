defmodule BurgerProject.Brands.Locations do
  use Ecto.Schema
  import Ecto.Changeset

  alias BurgerProject.Brands.Locations

  schema "locations" do
    field :name, :string

    belongs_to :brands, Brands

    timestamps()
  end

  @doc false
  def changeset(locations, attrs) do
    locations
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
