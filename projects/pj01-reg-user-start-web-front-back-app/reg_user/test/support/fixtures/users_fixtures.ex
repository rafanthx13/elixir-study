defmodule RegUser.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `RegUser.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        description: "some description",
        email: "some email",
        name: "some name"
      })
      |> RegUser.Users.create_user()

    user
  end
end
