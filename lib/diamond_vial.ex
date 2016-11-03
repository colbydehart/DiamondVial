defmodule DiamondVial do
	defmacro input <~> expression do
    {function, context, args} = expression
    new_args = swap_args args, input
    {function, context, new_args}
	end

  def swap_args(args, input) do
    Enum.map(args, fn arg ->
      case arg do
        {func, con, args} -> {func, con, swap_args(args, input)}
        :it -> input
        a -> a
      end
    end)
  end
end


