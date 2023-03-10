defmodule LiveViewStudioWeb.TopSecretLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, session, socket) do
    {:ok, assign_current_user(socket, session)}
  end

  def render(assigns) do
    ~L"""
    <h1>Top Secret</h1>
    <div id="top-secret">
      <img src="images/spy.svg">
      <div class="mission">
        <h2>Your Mission</h2>
        <h3><%= pad_id(@current_user) %></h3>
        <p>
          (should you choose to accept it)
        </p>
        <p>
          is detailed below...
        </p>
      </div>
    </div>
    """
  end

  defp pad_id(user) do
    user.id
    |> Integer.to_string
    |> String.pad_leading(3, "0")
  end
end
