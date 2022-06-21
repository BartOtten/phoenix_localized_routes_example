defmodule Example.InventoryFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Example.Inventory` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        name: "some name",
        price: 42
      })
      |> Example.Inventory.create_product()

    product
  end
end
