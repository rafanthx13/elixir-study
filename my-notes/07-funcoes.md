https://elixirschool.com/pt/lessons/basics/functions

## Operador de Pipe

Desde que o mundo é mundo, há aninhamento de funçoes algo como o trehco as seguir

foo(bar(baz(new_function(other_function()))))

em elixir podemos simplipclar com operador pipe

other_function() |> new_function() |> baz() |> bar() |> foo()

## exemplos

iex> "Elixir rocks" |> String.split()
["Elixir", "rocks"]


"Elixir rocks" |> String.upcase() |> String.split()
["ELIXIR", "ROCKS"]
