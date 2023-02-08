defmodule LiveViewStudioWeb.ServersLiveTest do
  use LiveViewStudioWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  test "clicking a server link shows its details", %{conn: conn} do
    first = create_server("First")
    second = create_server("Second")

    {:ok, view, _html} = live(conn, "/servers")

    assert has_element?(view, "nav", first.name)
    assert has_element?(view, "nav", second.name)
    assert has_element?(view, "#selected-server", first.name)

    view
    |> element("nav a", second.name)
    |> render_click()

    assert has_element?(view, "#selected-server", second.name)
    assert_patched(view, "/servers?name=#{second.name}")
  end

  test "selects the server identified in the URL", %{conn: conn} do
    _first = create_server("First")
    second = create_server("Second")

    {:ok, view, _html} = live(conn, "/servers?name=#{second.name}")

    assert has_element?(view, "#selected-server", second.name)
  end

  defp create_server(name) do
    {:ok, server} =
      LiveViewStudio.Servers.create_server(%{
        name: name,
        # these are irrelevant for tests:
        status: "up",
        deploy_count: 1,
        size: 1.0,
        framework: "framework",
        git_repo: "repo",
        last_commit_id: "id",
        last_commit_message: "message"
      })

    server
  end
end
