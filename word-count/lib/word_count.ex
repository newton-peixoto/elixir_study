defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    result = sentence |> String.downcase
      |> String.replace(~r/^a-zA-Z0-9/, "")
      |> String.replace(~r/[!&^%$?:@]/, "")
      |> String.replace(~r/_/, " ")
      |> String.replace(~r/,/, "")
      |> String.split(" ")
      |> Enum.reduce(%{}, fn(item, counts)->
        Map.update(counts, item, 1, &(&1 + 1))
    end) |> Map.delete("")
  end
end
