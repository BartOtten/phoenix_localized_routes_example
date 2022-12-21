# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Example.Repo.insert!(%Example.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Example.Repo.insert!(%Example.Store.Product{name: "Bread", price: 2})
Example.Repo.insert!(%Example.Store.Product{name: "Milk", price: 1})
Example.Repo.insert!(%Example.Store.Product{name: "Apples", price: 4})
Example.Repo.insert!(%Example.Store.Product{name: "Bananas", price: 4})
