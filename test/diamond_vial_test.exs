defmodule DiamondVialTest do
  use ExUnit.Case
	import DiamondVial

  test "Can pipe an input into an expression" do
    assert [1, 2, 3] <~> Enum.sum == 6
  end

  # test "Can pipe an arbitrary position" do
	# 	hero = %{name: %{first: "Han", last: "Solo"}}
	# 	villain = [:name, :first] <~> put_in(hero, :it, "Ben") 
  #   assert villain == %{name: %{first: "Ben", last: "Solo"}}
  # end
end
