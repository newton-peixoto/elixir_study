defmodule Prime do
  @doc """
  Generates the nth prime.
  """
  @spec nth(non_neg_integer) :: non_neg_integer
  def nth(count) do
    cond  do
       count < 1 -> raise ArgumentError
       count == 1 -> 2
       true -> nth(count, 0, 2)
    end
  end

  def nth(count, acumulator, number) do
    cond do
      acumulator  == count -> number - 1
      isPrime(number, 2)  -> nth(count, acumulator + 1, number + 1)
      :true -> nth(count, acumulator , number + 1)
    end
  end

  def isPrime(number, begin) do
    cond do
      :math.sqrt(number) >= begin and rem(number, begin) == 0 -> :false
      :math.sqrt(number) >= begin -> isPrime(number, begin+1)
      true -> :true

    end
  end
end
