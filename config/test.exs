use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dock_phoenix, DockPhoenix.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :dock_phoenix, DockPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("POSTGRESQL_USER") || "postgres",
  password: System.get_env("POSTGRESQL_PASSWORD") || "postgres",
  database: System.get_env("POSTGRESQL_DB_NAME") || "postgres",
  hostname: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox
