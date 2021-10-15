defmodule BurgerProject.Brands do
  alias BurgerProject.Brands

  defdelegate get_burger(id),
    to: Brands.Burger.Manager,
    as: :get

  defdelegate create_burger(params),
    to: Brands.Burger.Manager,
    as: :create
end
