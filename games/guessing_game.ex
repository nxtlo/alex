defmodule Guess do
  @doc "Complete broken guessing game"
  import Enum
  def begin() do
    rand = random(1..10)
    IO.puts("Guess a number from 1 to 10.")
    Guess.start_loop(rand)
  end

  def start_loop(self) do
    input = IO.read(:stdio, :line)
    {begin, _nil} = Integer.parse(input)
    cond do
      begin < self ->
        IO.puts "Number is too low."
        start_loop(self)
      begin > self ->
        IO.puts "Number is too high"
        start_loop(self)
      true ->
      IO.puts "You guessed the right number PogU, It was -> #{self}"
      end
    end
end
Guess.begin()
