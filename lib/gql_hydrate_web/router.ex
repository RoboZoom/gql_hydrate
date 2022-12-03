defmodule GqlHydrateWeb.Router do
  use GqlHydrateWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {GqlHydrateWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

    pipeline :api do
      plug :accepts, ["json"]
      plug Plug.Parsers,
           parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
           pass: ["*/*"],
           json_decoder: Jason

    end

  scope "/api" do
        pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: GqlHydrateWeb.Schema,
      interface: :simple

    forward "/", Absinthe.Plug, schema: GqlHydrateWeb.Schema
  end

  # Other scopes may use custom stacks.
  # scope "/api", GqlHydrateWeb do
  #   pipe_through :api
  # end
end
