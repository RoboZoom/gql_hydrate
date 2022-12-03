defmodule GqlHydrateWeb.Schema do
  @moduledoc false

  use Absinthe.Schema

  import_sdl(path: "assets/sdl/sample-schema.graphql")

    def hydrate(%{identifier: :get_people}, [%{identifier: :query} | _]) do
      {:resolve, &GqlHydrateWeb.Resolvers.GetPeople.resolve_get_people/3}
    end

#  def hydrate(%Absinthe.Blueprint{}, _) do
#    %{query: %{get_people: [resolve: &GqlHydrateWeb.Resolvers.GetPeople.resolve_get_people/3]}}
#  end

  def hydrate(_node, _ancestors), do: []
end
