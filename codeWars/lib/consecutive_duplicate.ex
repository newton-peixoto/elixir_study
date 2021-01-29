defmodule ConsecutiveDuplicate do
  def remove_duplicate(string) do
    string
    |> String.graphemes
    |> Enum.chunk_by(fn x -> x end)
    |> Enum.map(fn x ->  x |> List.first end)
    |> Enum.join("")
  end
end
