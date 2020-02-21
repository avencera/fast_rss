defmodule FastRss.MixProject do
  use Mix.Project

  def project do
    [
      app: :fast_rss,
      version: "0.1.2",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
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
      files: ["lib", "native", "mix.exs", "README.md"],
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
