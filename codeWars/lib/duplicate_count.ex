defmodule DuplicateCount do

  def count(str) do
    str
    |> String.downcase
    |> String.graphemes
    |> Enum.sort(fn x, y ->  x > y end)
    |> Enum.chunk_by(fn x -> x end)
    |> Enum.map(fn element ->
      cond do
        length(element) > 1 -> 1
        true -> :nil
      end
    end)
    |> Enum.filter(fn x -> x != :nil end )
    |> Enum.sum
  end

end
