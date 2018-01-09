Code.load_file("negator.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule TestNegator do
  use ExUnit.Case
  import Negator, only: [make_negative: 1]

  test "simple check" do
    assert make_negative(42) == -42
  end
end
