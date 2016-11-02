# DiamondVial

DiamondVial is an Elixir implementation of _The Diamond Wand_
from the [Swiss Arrows](https://github.com/rplevy/swiss-arrows)
Clojure library built as a group programming exercise for the
November Atlanta Elixir Meetup. 

The DiamondVial (`<~>`) is similar to the `|>` operator with the 
addition that the flow of execution is specified by the `:it` symbol
(inpired by the [Dash.el](https://github.com/magnars/dash.el) Library)
in each subsequent expression.

## Example

```
> hero = %{name: %{first: "Han", last: "Solo"}}
> [:name, :first] <~> put_in(hero, :it, "Ben") 
%{name: %{first: "Ben", last: "Solo"}}
```
