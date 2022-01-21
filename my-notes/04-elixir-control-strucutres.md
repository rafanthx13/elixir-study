# Estruturas do Elixir

### Estruturas de controle

## IF

if boolean-statement do
   #Code to be executed if condition is satisfied
end

**com else**

a = false
if a === true do
   IO.puts "Variable a is true!"
else
   IO.puts "Variable a is false!"
end
IO.puts "Outside the if statement"


if boolean-statement do
   #Code to be executed if condition is satisfied
end

## unless

mesma coisa que if, mas já nega

## COND

cond do
   boolean_expression_1 -> #Execute if this condition is true
   boolean_expression_2 -> #Execute if this condition is true
   ...
   true -> #Execute if none of the above conditions are true
end

guess = 46
cond do
   guess == 10 -> IO.puts "You guessed 10!"
   guess == 46 -> IO.puts "You guessed 46!"
   guess == 42 -> IO.puts "You guessed 42!"
   true        -> IO.puts "I give up."
end

## CASE

case value do
       matcher_1 -> #code to execute if value matches matcher_1
	matcher_2 -> #code to execute if value matches matcher_2
	matcher_3 -> #code to execute if value matches matcher_3
	...
	_ -> #code to execute if value does not match any of the above
end

case 3 do
   1 -> IO.puts("Hi, I'm one")
   2 -> IO.puts("Hi, I'm two")
   3 -> IO.puts("Hi, I'm three")
   _ -> IO.puts("Oops, you dont match!")
end
