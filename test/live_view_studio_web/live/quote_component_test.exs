defmodule LiveViewStudioWeb.QuoteComponentTest do
  use LiveViewStudioWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  alias LiveViewStudioWeb.QuoteComponent

  test "renders quote with 24-hour expiry by default" do
    assigns = [
      material: "sand",
      weight: 2.0,
      price: 4.0
    ]

    html = render_component(QuoteComponent, assigns)

    assert html =~ "2.0 pounds of sand"
    assert html =~ "expires in 24 hours"
  end
end
