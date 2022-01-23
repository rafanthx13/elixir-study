defmodule BakBanck.BanksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BakBanck.Banks` context.
  """

  @doc """
  Generate a accounts.
  """
  def accounts_fixture(attrs \\ %{}) do
    {:ok, accounts} =
      attrs
      |> Enum.into(%{
        balance: 42,
        number: "some number",
        owner: "some owner"
      })
      |> BakBanck.Banks.create_accounts()

    accounts
  end

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        age: 42,
        name: "some name"
      })
      |> BakBanck.Banks.create_user()

    user
  end
end
