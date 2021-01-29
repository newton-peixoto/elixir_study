defmodule DescendingOrder do
  def descending_order(n) do
      n
      |> Integer.digits
      |> Enum.sort(fn x, y ->  x > y end)
      |> Integer.undigits
  end
end
