defmodule CofferTest do
  use ExUnit.Case
  doctest Coffer

  test "greets the world" do
    assert Coffer.hello() == :world
  end
end
