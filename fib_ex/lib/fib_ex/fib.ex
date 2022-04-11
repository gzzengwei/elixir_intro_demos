defmodule Fib do
  def fib(0), do: 1
  def fib(1), do: 1

  def fib(number) do
    fib(number - 2) + fib(number - 1)
  end
end
