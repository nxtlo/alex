defmodule Api.MixProject do
  use Mix.Project

  def project do
    [
      app: :api,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      application: [:httpoison]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"}
    ]
  end
end
