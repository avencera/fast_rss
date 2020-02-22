defmodule FastRSS do
  @moduledoc """
  Parse RSS quickly using a Rust nif.
  """

  defmodule Native do
    @moduledoc false
    use Rustler, otp_app: :fast_rss, crate: "fastrss"

    # When your NIF is loaded, it will override this function.
    def parse(_a), do: :erlang.nif_error(:nif_not_loaded)
  end

  @doc """
  Parse a RSS string into a map
  """
  @spec parse(String.t()) :: {:ok, map()} | {:error, String.t()}
  def parse(""), do: {:error, "Cannot parse blank string"}

  def parse(rss_string) when is_binary(rss_string) do
    Native.parse(rss_string)
  end

  def parse(_somethig_else), do: {:error, "RSS feed must be passed in as a string"}
end
