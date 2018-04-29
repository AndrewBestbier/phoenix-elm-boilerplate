# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_elm_boilerplate,
  ecto_repos: [PhoenixElmBoilerplate.Repo]

# Configures the endpoint
config :phoenix_elm_boilerplate, PhoenixElmBoilerplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ohK1UCvRr0Gg/YEceYz4MNf2w23AibJw/6A8rfNJStBnZ13S82ap5uv/fETSZGB6",
  render_errors: [view: PhoenixElmBoilerplateWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixElmBoilerplate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
