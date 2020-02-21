defmodule Benchmarks.MixProject do
  use Mix.Project

  def project do
    [
      app: :benchmarks,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def aliases() do
    [
      bench: ["run bench.exs"]
    ]
  end

  defp deps do
    [
      {:fast_rss, "~> 0.1.0", path: "../", override: true},
      {:benchee, "~> 1.0"},
      {:benchee_html, "~> 1.0"},
      {:elixir_feed_parser, "~> 0.0.1"}
    ]
  end
end
