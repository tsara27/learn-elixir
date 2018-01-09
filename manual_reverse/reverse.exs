defmodule Reverse do
  def execute([]), do: []
  def execute([head | tail]), do: execute(tail) ++ [head]
end
