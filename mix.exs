defmodule FastRss.MixProject do
  use Mix.Project

  def project do
    [
      app: :fast_rss,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      compilers: [:rustler] ++ Mix.compilers(),
      rustler_crates: [fastrss: []],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # rust
      {:rustler, "~> 0.21.0"},

      # json
      {:jason, "~> 1.1"}
    ]
  end
end
