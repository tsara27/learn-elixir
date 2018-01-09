Code.load_file("reverse.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule TestReverse do
  use ExUnit.Case
  import Reverse, only: [execute: 1]

  test "Test 1" do
    assert execute([1, 2, 3, 4]) == [4, 3, 2, 1]
  end

  test "Test 2" do
    assert execute(["A", 2, "B", 4, "C"]) == ["C", 4, "B", 2, "A"]
  end
end
