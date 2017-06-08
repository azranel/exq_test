defmodule BackgroundWorkers.Fibonnacci do
  def calc(1), do: 1
  def calc(2), do: 1
  def calc(n), do: calc(n - 1) + calc(n - 2)
end
