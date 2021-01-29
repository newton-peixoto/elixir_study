defmodule ConsecutiveDuplicateTest do
  use ExUnit.Case
  doctest ConsecutiveDuplicate
  test "Remove Duplicates test" do
      Enum.each [
          {"aaaaabbbbbb","ab"},
          {"geeksforgeeks","geksforgeks"},
          {"aabccba","abcba"},
          {"newtonn", "newton"}
      ], fn {string,expected} ->
          actual = ConsecutiveDuplicate.remove_duplicate(string)
          assert actual == expected
      end
  end
end
