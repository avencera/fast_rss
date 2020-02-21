defmodule FastRss.MixProject do
  use Mix.Project

  def project do
    [
      app: :fast_rss,
      version: "0.1.0",
      elixir: "~> 1.10",
      # hex
      description: "Fast RSS parser written in rust",
      package: package(),
      start_permanent: Mix.env() == :prod,
      compilers: [:rustler] ++ Mix.compilers(),
      rustler_crates: [fastrss: []],
      deps: deps()
    ]
  end

  defp package() do
    [
      maintainers: ["Praveen Perera"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/avencera/fast_rss"}
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
      {:jason, "~> 1.1"},

      # docs
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
