defmodule FastRSS.MixProject do
  use Mix.Project

  @source_url "https://github.com/avencera/fast_rss"
  @version "0.4.1"

  def project do
    [
      app: :fast_rss,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # hex
      description: "Fast Elixir RSS feed parser, a NIF wrapper around the Rust RSS crate",
      package: package(),

      # docs
      homepage_url: "https://avencera.github.io/fast_rss/",
      docs: docs(),

      # rustler
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers(),
      rustler_crates: [fastrss: []]
    ]
  end

  defp package() do
    [
      files: [
        "lib",
        "native/fastrss/.cargo",
        "native/fastrss/src",
        "native/fastrss/Cargo.toml",
        "native/fastrss/Cargo.lock",
        "checksum-*.exs",
        "mix.exs",
        "README.md",
        "LICENSE"
      ],
      maintainers: ["Praveen Perera"],
      licenses: ["Apache-2.0"],
      links: %{
        "Changelog" => "#{@source_url}/blob/master/CHANGELOG.md",
        "GitHub" => @source_url
      }
    ]
  end

  defp docs() do
    [
      main: "readme",
      markdown_processor: ExDoc.Markdown.Earmark,
      extras: ["README.md", "CHANGELOG.md", "LICENSE"],
      source_ref: "v#{@version}",
      source_url: @source_url
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
      {:rustler, "~> 0.25.0", optional: true},
      {:rustler_precompiled, "~> 0.5"},

      # docs
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
