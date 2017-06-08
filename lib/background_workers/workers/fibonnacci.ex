defmodule BackgroundWorkers.Workers.Fibonnacci do
  alias BackgroundWorkers.Fibonnacci

  def perform(n) do
    result = Fibonnacci.calc(n)
    IO.puts "Fibonnacci for #{n} equals #{result}" 
  end
end
