defmodule Api do
  import HTTPoison

  def get() do
    url = "https://api.github.com"
    cond do
      true -> 
        get! url
      false ->
        nil
    end
  end
end
