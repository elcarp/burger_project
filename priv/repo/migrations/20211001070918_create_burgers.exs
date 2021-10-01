defmodule BurgerProject.Repo.Migrations.CreateBurgers do
  use Ecto.Migration

  def change do
    create table(:burgers) do
      add :name, :string

      timestamps()
    end
  end
end
