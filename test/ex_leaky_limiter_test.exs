defmodule ExLeakyLimiterTest do
  use ExUnit.Case
  doctest ExLeakyLimiter

  test "greets the world" do
    assert ExLeakyLimiter.hello() == :world
  end
end
