defmodule Order do
  def next_id(ids) do
    ordered = ids |> Enum.sort(fn x, y -> x < y end)


    a = for n <- 0..List.last(ordered) do
      cond do
        !Enum.member?(ordered, n) -> n
        true -> :nil
      end
    end

    b = Enum.filter(a, fn x -> x != :nil end)

    cond do
      length(b) == 0 -> List.last(ordered) + 1
      true -> Enum.min(b)
    end

  end
end
