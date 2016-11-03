defmodule DiamondVialTest do
  use ExUnit.Case
	import DiamondVial

  test "Can pipe an arbitrary position" do
    res = 2 <~> 3 + :it
    assert res == 5
  end

  test "Can pipe an arbitrary position with more than one func" do
    res = 2 <~> 3 + 4 + :it
    assert res == 9
  end

  test "Can pipe with funky funcs" do
    res = 2 <~> :it + 3 * :it
    assert res == 8
  end

  test "Can pipe with more funky funcs" do
    res = 2 <~> :it + 3 <~> :it * 4 <~> :it + :it
    assert res == 40 
  end
end
