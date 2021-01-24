defmodule Enums do
    odd? = &(rem(&1, 2) != 0)
    res = 1..100_000 
        |> Stream.map(&(&1 * 3)) 
            |> Stream.filter(odd?) 
                |> Enum.sum
    IO.puts(res)
end