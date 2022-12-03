import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gql_hydrate, GqlHydrateWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "OOrQEGfQwN5VBsaf1mA0Q/osiKsoBWEAcTgeE3szNSr0LuulEQjkHu0dn5xJSSWH",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
