defmodule MaxTriSumTeste do
  use ExUnit.Case
  doctest MaxTriSum

  defp testing(nums, exp) do
    a = MaxTriSum.max_tri_sum(nums)
    msg = """
Given numbers: #{inspect(nums, charlists: :as_lists)}
Expected: #{exp}
Got: #{a}
"""
    assert a == exp, msg
  end

  test "Max triplet sum test" do
    testing([3, 2, 6, 8, 2, 3], 17)
    testing([2, 9, 13, 10, 5, 2, 9, 5], 32)
    testing([2, 1, 8, 0, 6, 4, 8, 6, 2, 4], 18)
    testing([-3, -27, -4, -2, -27, -2], -9)
    testing([-14, -12, -7, -42, -809, -14, -12], -33)
    testing([-13, -50, 57, 13, 67, -13, 57, 108, 67], 232)
    testing([-7, 12, -7, 29, -5, 0, -7, 0, 0, 29], 41)
    testing([-2, 0, 2], 0)
    testing([-2, -4, 0, -9, 2], 0)
    testing([-5, -1, -9, 0, 2], 1)
  end
end
