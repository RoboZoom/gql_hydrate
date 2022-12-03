defmodule GqlHydrateWeb.Resolvers.GetPeople do
  def resolve_get_people(a, b, c) do
    IO.puts("In Resolver")
    {:ok,
     [%{
       last_name: "Smith",
       first_name: "Joe",
       id: "9ap8sodh"
     }]}
  end

  #  def hydratePeople(%{identifier: :getPeople}, [%{identifier: :query} | _]) do
  #    {:resolve, &__MODULE__.resolve_get_people/3}
  #  end
end
