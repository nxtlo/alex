defmodule Err do
  defexception [:message]

  @impl true
  def exception(value) do
    msg = "Thread units can not be more than #{inspect(value)}."
    %Err{message: msg}
  end
end



defmodule Guard do
end

defmodule Thread do
  import Task

  def newthread(untis \\ 8) do
    if untis > 8 do
      raise Err, untis
    else
      IO.puts("Ok")
    end
  end

  def stopthread(status) do
    IO.warn("Stopping thread now!!")
    Process.sleep(5)
    exit(status)
  end

  def betweenthread() do
    IO.puts("Between thread now.")
  end

  def task() do
    x = async(fn(x, y) -> )
    y = betweenthread()
    await(x) + y
  end
end
