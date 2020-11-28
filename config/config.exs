# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :athena_exam_reader,
  ecto_repos: [AthenaExamReader.Repo]

# Configures the endpoint
config :athena_exam_reader, AthenaExamReaderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y5bCu+KCAt+qoUdITGw7ATr9UAp1wyX8xkNc6vN14s3ysnOMODrvK9+BtxnoHPo7",
  render_errors: [view: AthenaExamReaderWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AthenaExamReader.PubSub,
  live_view: [signing_salt: "yOFRbvMu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
