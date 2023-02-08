defmodule LiveViewStudioWeb.SalesDashboardLiveTest do
  use LiveViewStudioWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  test "refreshes when refresh button is clicked", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/sales-dashboard")

    before_refresh = render(view)

    after_refresh =
      view
      |> element("button", "Refresh")
      |> render_click()

    refute after_refresh =~ before_refresh
  end

  test "refreshes the sales amount every tick", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/sales-dashboard")

    before_refresh_sales_amount =
      view
      |> render()
      |> get_text_for_selector("#sales-amount")

    send(view.pid, :tick)

    after_refresh_sales_amount =
      view
      |> render()
      |> get_text_for_selector("#sales-amount")

    refute before_refresh_sales_amount =~ after_refresh_sales_amount
  end

  test "refreshes the sales new orders every tick", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/sales-dashboard")

    before_refresh_new_orders =
      view
      |> render()
      |> get_text_for_selector("#new-orders")

    send(view.pid, :tick)

    after_refresh_new_orders =
      view
      |> render()
      |> get_text_for_selector("#new-orders")

    refute before_refresh_new_orders =~ after_refresh_new_orders
  end

  test "refreshes the sales satisfaction every tick", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/sales-dashboard")

    before_refresh_satisfaction =
      view
      |> render()
      |> get_text_for_selector("#satisfaction")

    send(view.pid, :tick)

    after_refresh_satisfaction =
      view
      |> render()
      |> get_text_for_selector("#satisfaction")

    refute before_refresh_satisfaction =~ after_refresh_satisfaction
  end

  defp get_text_for_selector(html, selector) do
    html
    |> Floki.parse_document!()
    |> Floki.find(selector)
    |> Floki.text()
  end
end
