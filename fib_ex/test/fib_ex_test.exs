defmodule FibExTest do
  use ExUnit.Case
  doctest FibEx

  test "greets the world" do
    assert FibEx.hello() == :world
  end
end
