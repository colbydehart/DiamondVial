defmodule DiamondVial do
	defmacro input <~> expression do
		quote do
			unquote(input) |> unquote(expression)
		end
	end
end
