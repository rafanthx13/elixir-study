defmodule BakBanck.BanksTest do
  use BakBanck.DataCase

  alias BakBanck.Banks

  describe "accounts" do
    alias BakBanck.Banks.Accounts

    import BakBanck.BanksFixtures

    @invalid_attrs %{balance: nil, number: nil, owner: nil}

    test "list_accounts/0 returns all accounts" do
      accounts = accounts_fixture()
      assert Banks.list_accounts() == [accounts]
    end

    test "get_accounts!/1 returns the accounts with given id" do
      accounts = accounts_fixture()
      assert Banks.get_accounts!(accounts.id) == accounts
    end

    test "create_accounts/1 with valid data creates a accounts" do
      valid_attrs = %{balance: 42, number: "some number", owner: "some owner"}

      assert {:ok, %Accounts{} = accounts} = Banks.create_accounts(valid_attrs)
      assert accounts.balance == 42
      assert accounts.number == "some number"
      assert accounts.owner == "some owner"
    end

    test "create_accounts/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Banks.create_accounts(@invalid_attrs)
    end

    test "update_accounts/2 with valid data updates the accounts" do
      accounts = accounts_fixture()
      update_attrs = %{balance: 43, number: "some updated number", owner: "some updated owner"}

      assert {:ok, %Accounts{} = accounts} = Banks.update_accounts(accounts, update_attrs)
      assert accounts.balance == 43
      assert accounts.number == "some updated number"
      assert accounts.owner == "some updated owner"
    end

    test "update_accounts/2 with invalid data returns error changeset" do
      accounts = accounts_fixture()
      assert {:error, %Ecto.Changeset{}} = Banks.update_accounts(accounts, @invalid_attrs)
      assert accounts == Banks.get_accounts!(accounts.id)
    end

    test "delete_accounts/1 deletes the accounts" do
      accounts = accounts_fixture()
      assert {:ok, %Accounts{}} = Banks.delete_accounts(accounts)
      assert_raise Ecto.NoResultsError, fn -> Banks.get_accounts!(accounts.id) end
    end

    test "change_accounts/1 returns a accounts changeset" do
      accounts = accounts_fixture()
      assert %Ecto.Changeset{} = Banks.change_accounts(accounts)
    end
  end

  describe "users" do
    alias BakBanck.Banks.User

    import BakBanck.BanksFixtures

    @invalid_attrs %{age: nil, name: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Banks.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Banks.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{age: 42, name: "some name"}

      assert {:ok, %User{} = user} = Banks.create_user(valid_attrs)
      assert user.age == 42
      assert user.name == "some name"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Banks.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{age: 43, name: "some updated name"}

      assert {:ok, %User{} = user} = Banks.update_user(user, update_attrs)
      assert user.age == 43
      assert user.name == "some updated name"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Banks.update_user(user, @invalid_attrs)
      assert user == Banks.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Banks.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Banks.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Banks.change_user(user)
    end
  end
end
