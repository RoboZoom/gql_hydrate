defmodule GqlHydrateWeb.Resolvers.GetPeople do

  def resolve_get_people(a,b,c) do
    %{
    lastName: 'Smith',
    firstName: 'Joe',
    id: '9ap8sodh'
    }

  end

#  def hydratePeople(%{identifier: :getPeople}, [%{identifier: :query} | _]) do
#    {:resolve, &__MODULE__.resolve_get_people/3}
#  end

end