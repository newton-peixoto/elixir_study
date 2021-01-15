defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """

  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search(numbers, key) do
    search(numbers, key, 0, numbers |> Tuple.to_list() |> Enum.count() )
  end

  def search(numbers, key, lo, hi)  when hi < lo do
    :not_found
  end

  def search(numbers, key, lo, hi) do
    mid = div(lo + hi, 2)
    item = numbers |> Tuple.to_list |> Enum.at( mid)
    cond do
      key < item -> search(numbers, key, lo, mid-1)
      key > item -> search(numbers, key, mid+1, hi)
      true       -> {:ok, mid}
    end
  end
end
