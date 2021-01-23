defmodule Datatypes do
    
    num1 = 10
    num2 = 300
    name = "Alex"

    IO.puts(num1 == 9) # false

    IO.puts(num2 == 300) # true

    IO.puts(name)

    IO.puts(num1 + num2)

    IO.puts(num1 - num2 * num1)

    IO.puts(num1 / num2)

    IO.puts(rem(num1, num2))

    IO.puts(div(num1, num2))
end