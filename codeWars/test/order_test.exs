defmodule OrderTest do
  use ExUnit.Case
  doctest Order

  test "returns the lowestNextId" do
    assert Order.next_id([0,1,2,3,5]) == 4
    assert Order.next_id([0,1,2,3,4,5,6,7,8,9,10]) == 11
  end
end
