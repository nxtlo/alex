defmodule Api do
  import HTTPoison

  def async_get() do
    url = "https://api.github.com"
    cond do
      true -> 
        get(url, [], hackney: [pool: :default])
      false ->
        nil
    end
  end
  
  def async_post(url) do
    try do
      post!(
        url, {
          :mulitpart, [{
                 :file, "test.rs", {"from-data"}, [{"name", "postest"}, {"filename", "test.rs"}], []}]})
    after
      IO.puts("Error occurred.")
    end
  end
end
