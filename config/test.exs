use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_elm_boilerplate, PhoenixElmBoilerplateWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_elm_boilerplate, PhoenixElmBoilerplate.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_elm_boilerplate_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
