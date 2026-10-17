defmodule FastRSS do
  @moduledoc """
  Parse RSS quickly using a Rust NIF.
  """

  defmodule Native do
    @moduledoc false

    mix_config = Mix.Project.config()
    version = mix_config[:version]
    github_url = mix_config[:package][:links]["GitHub"]

    use RustlerPrecompiled,
      otp_app: :fast_rss,
      crate: "fastrss",
      base_url: "#{github_url}/releases/download/v#{version}",
      force_build: System.get_env("FORCE_BUILD") in ["1", "true"],
      version: version

    # When your NIF is loaded, it will override this function.
    def parse_rss(_a), do: :erlang.nif_error(:nif_not_loaded)
    def parse_atom(_a), do: :erlang.nif_error(:nif_not_loaded)
  end

  @doc """
  Parse a RSS string into a map.

  soft deprecated: "Use FastRSS.parse_rss/1 instead"
  @doc since: "0.5.0"
  @deprecated "Use FastRSS.parse_rss/1 instead"
  """
  @spec parse(String.t()) :: {:ok, FastRSS.RSS.channel()} | {:error, String.t()}
  def parse(""), do: {:error, "Cannot parse blank string"}
  def parse(rss_string) when is_binary(rss_string), do: parse_rss(rss_string)
  def parse(_something_else), do: {:error, "RSS feed must be passed in as a string"}

  @doc """
  Parse a RSS string into a map.
  """
  @spec parse_rss(String.t()) :: {:ok, FastRSS.RSS.channel()} | {:error, String.t()}
  @doc since: "0.5.0"
  def parse_rss(""), do: {:error, "Cannot parse blank string"}

  def parse_rss(rss_string) when is_binary(rss_string) do
    rss_string
    |> Native.parse_rss()
    |> map_to_tuple()
  end

  def parse_rss(_something_else), do: {:error, "RSS feed must be passed in as a string"}

  @doc """
  Parse a Atom string into a map.
  """
  @spec parse_atom(String.t()) :: {:ok, FastRSS.Atom.feed()} | {:error, String.t()}
  @doc since: "0.5.0"
  def parse_atom(""), do: {:error, "Cannot parse blank string"}

  def parse_atom(atom_string) when is_binary(atom_string) do
    atom_string
    |> Native.parse_atom()
    |> map_to_tuple()
  end

  def parse_atom(_something_else), do: {:error, "Atom feed must be passed in as a string"}

  defp map_to_tuple(%{"Ok" => map}), do: {:ok, map}
  defp map_to_tuple({:ok, map}), do: {:ok, map}
  defp map_to_tuple(%{"Err" => msg}), do: {:error, msg}
  defp map_to_tuple({:error, msg}), do: {:error, msg}
end
