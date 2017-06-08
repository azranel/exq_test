defmodule BackgroundWorkers.Enqueuer do
  def calc_fibonacci_in_background(n) do
    Exq.enqueue(Exq, "default", BackgroundWorkers.Workers.Fibonnacci, [n])
  end
end
