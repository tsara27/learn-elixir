defmodule Negator do
  def make_negative(num) when num >= 0, do: num * -1
  def make_negative(num), do: num
end
