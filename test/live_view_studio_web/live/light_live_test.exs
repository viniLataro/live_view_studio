defmodule LiveViewStudioWeb.LightLiveTest do
  use LiveViewStudioWeb.ConnCase, async: true

  import Phoenix.LiveViewTest
  import LiveViewStudio.AccountsFixtures

  test "initial render", %{conn: conn} do
    user = user_fixture()
    conn = log_in_user(conn, user)

    {:ok, view, html} = live(conn, "/light")

    assert html =~ "Porch Light"
    assert render(view) =~ "Porch Light"
  end

  test "light controls", %{conn: conn} do
    user = user_fixture()
    conn = log_in_user(conn, user)

    {:ok, view, _html} = live(conn, "/light")

    assert render(view) =~ "10%"
    assert view |> element("button", "Up")   |> render_click() =~ "20%"
    assert view |> element("button", "Down") |> render_click() =~ "10%"
    assert view |> element("button", "On")   |> render_click() =~ "100%"
    assert view |> element("button", "Off")  |> render_click() =~ "0%"
    refute render(view) =~ "100%"
   end

   test "min brightness is 0%", %{conn: conn} do
    user = user_fixture()
    conn = log_in_user(conn, user)

     {:ok, view, _html} = live(conn, "/light")

     assert view |> element("button", "Off")  |> render_click() =~ "0%"
     assert view |> element("button", "Down") |> render_click() =~ "0%"
   end

   test "max brightness is 100%", %{conn: conn} do
    user = user_fixture()
    conn = log_in_user(conn, user)

     {:ok, view, _html} = live(conn, "/light")

     assert view |> element("button", "On") |> render_click() =~ "100%"
     assert view |> element("button", "Up") |> render_click() =~ "100%"
   end
end
