defmodule My.Assigns do
  @moduledoc false
  defstruct [:contact, :name, locale: "en"]
end

defmodule ExampleWeb.LocalizedRoutes do
  alias My.Assigns

  use PhxLocalizedRoutes,
    scopes: %{
      "/" => %{
        assign: %Assigns{name: "Worldwide", contact: "root@example.com"},
        scopes: %{
          "/europe" => %{
            assign: %Assigns{name: "Europe", contact: "europe@example.com"},
            scopes: %{
              "/nl" => %{
                assign: %Assigns{
                  name: "The Netherlands",
                  locale: "nl",
                  contact: "verkoop@example.nl"
                }
              },
              "/be" => %{
                assign: %Assigns{name: "Belgium", locale: "nl", contact: "handel@example.be"}
              }
            }
          },
          "/gb" => %{assign: %Assigns{name: "Great Britain", contact: "sales@example.com"}}
        }
      }
    },
    gettext_module: ExampleWeb.Gettext
end
