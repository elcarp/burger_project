defmodule BurgerProject.Brands.Burger do
  use Ecto.Schema
  import Ecto.Changeset

  alias BurgerProject.Brands.Burger

  schema "burgers" do
    field :name, :string

    has_many :burgers, Burger

    timestamps()
  end

  @doc false
  def changeset(burger, attrs) do
    burger
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
