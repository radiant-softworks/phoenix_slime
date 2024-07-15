defmodule PhoenixSlimeEexTest do
  use ExUnit.Case
  import ComponentHelper
  doctest PhoenixSlime

  defmodule MyApp.PageHTML do
    alias ElixirLS.LanguageServer.Plugins.Phoenix
    use Phoenix.Component
    import PhoenixSlime

    def button(assigns) do
      ~h"""
      .button =assigns.text
      """
    end
  end

  embed_templates "fixtures/templates/my_app/page/*"
end

# test "render a slime template with layout" do
#   html =
#     View.render(MyApp.PageView, "new.html,
#       message: "hi",
#       layout: { MyApp.PageView, "application.html" }
#     )

# assert html == {:sage, ["<html><body>", ["<h2>New Template</h2>"] "<body></html>"]}
# end

test "render a slime template without layout" do
  html = MyApp.PageHTML.new(%{})
  |> render_to_string()

  assert html == "<h2>New Template</h2>"
end
