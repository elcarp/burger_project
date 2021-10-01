defmodule BurgerProject.Brands.Burger do
  use Ecto.Schema
  import Ecto.Changeset

  schema "burgers" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(burger, attrs) do
    burger
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
