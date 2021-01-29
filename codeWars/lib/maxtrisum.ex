defmodule MaxTriSum do
  def max_tri_sum(nums) do
    nums
    |> Enum.uniq
    |> Enum.sort(fn x, y ->  x < y end)
    |>Enum.take(-3)
    |> Enum.sum
  end
end
