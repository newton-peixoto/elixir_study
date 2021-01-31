defmodule DuplicateCountTest do
  use ExUnit.Case
  doctest DuplicateCount

  test "Example Tests" do
    assert DuplicateCount.count("") == 0
    assert DuplicateCount.count("abcde") == 0
    assert DuplicateCount.count("aabbcde") == 2
    assert DuplicateCount.count("aabBcde") == 2
    assert DuplicateCount.count("Indivisibility") == 1
    assert DuplicateCount.count("Indivisibilities") == 2
  end
end
