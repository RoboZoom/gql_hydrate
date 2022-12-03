defmodule GqlHydrateWeb.PageController do
  use GqlHydrateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
