defprotocol Asyncio do
  @doc "Async Coro"
  def async(obj)
  @doc "Await Coro"
  def await(obj)
end

defimpl Asyncio, for: Strategy do
  def async(_), do: ""
  def await(_), do: ""
end

defmodule Strategy do
  @impl true
  def test() do
    try do
      Timer.sleep(2)
      Asyncio.await 5 * 2
    catch
      fn ->
        exit(1) end
    end
  end
end
