import Config

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine,
  sheex: PhoenixSlime.LiveView.HTMLEngine

config :phoenix_slime, :use_slim_extension, true

config :phoenix, :json_library, Jason
