defmodule ComponentHelper do
  alias ElixirLS.LanguageServer.Plugins.Phoenix
  def render_to_string(component) do
    component
    |> Phoenix.HTML.Safe.to_iodata()
    |> IO.iodata_to_binary()
  end
end
