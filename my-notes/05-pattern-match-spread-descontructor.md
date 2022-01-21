# Pattern Matching (=)

link: https://www.tutorialspoint.com/elixir/elixir_quick_guide.htm

Sabemos que a igualdade serve para atribuir.

Mas em elixr, se tratando de osjbetos masi complexos como listas e tuplas, podemos usar esse operador para desconruir objetos

[var_1, _unused_var, var_2] = [{"First variable"}, 25, "Second variable" ]
IO.puts(var_1)
IO.puts(var_2)

[_, [_, {a}]] = ["Random string", [:an_atom, {24}]]
IO.puts(a)


