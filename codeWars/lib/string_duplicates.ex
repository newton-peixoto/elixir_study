defmodule StringDuplicates do
  def dup(ls) do
      ls
      |> Enum.map( fn string ->

        remove_duplicate(string)

      end)
  end

  def remove_duplicate(string) do
    string
    |> String.to_charlist
    |> Enum.dedup
    |> List.to_string
  end

end
