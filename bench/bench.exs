elixir_feed_parser = fn xml_string ->
  with {:ok, xml} <- ElixirFeedParser.XmlNode.parse_string(xml_string),
       {:ok, _parser} <-
         if(ElixirFeedParser.Parsers.ITunesRSS2.can_parse?(xml),
           do: {:ok, ElixirFeedParser.Parsers.ITunesRSS2},
           else:
             {:error,
              "Cannot parse XML with ElixirFeedParser.Parsers.ITunesRSS2 #{
                ElixirFeedParser.Parsers.ITunesRSS2
              }"}
         ) do
    {:ok, ElixirFeedParser.Parsers.ITunesRSS2.parse(xml)}
  end
end

parse_jobs = %{
  "fast_rss" => &FastRSS.parse_rss/1,
  "elixir_feed_parser" => fn string -> elixir_feed_parser.(string) end,
  "feed_raptor" => &Feedraptor.parse/1,
  "feeder_ex" => &FeederEx.parse/1
}

parse_inputs = [
  "anxiety",
  "ben",
  "daily",
  "dave",
  "stuff",
  "sleepy"
]

read_data = fn name ->
  name
  |> (&"data/#{&1}.rss").()
  |> Path.expand(__DIR__)
  |> File.read!()
end

Benchee.run(parse_jobs,
  #  parallel: 4,
  warmup: 5,
  time: 30,
  memory_time: 1,
  inputs:
    for name <- parse_inputs, into: %{} do
      name
      |> read_data.()
      |> (&{name, &1}).()
    end,
  formatters: [
    {Benchee.Formatters.HTML, file: Path.expand("output/parse.html", __DIR__)},
    {Benchee.Formatters.Markdown, file: Path.expand("output/parse.md", __DIR__)},
    Benchee.Formatters.Console
  ]
)
