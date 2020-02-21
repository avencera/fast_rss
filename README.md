# FastRSS

Parse RSS feeds very quickly

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fast_rss` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fast_rss, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/fast_rss](https://hexdocs.pm/fast_rss).

## Benchmarks

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
Number of Available Cores: 16
Available memory: 32 GB
Elixir 1.10.1
Erlang 22.2.6

Benchmark suite executing with the following configuration:
warmup: 5 s
time: 30 s
memory time: 1 s
parallel: 1
inputs: anxiety, ben, daily, dave
Estimated total run time: 4.80 min

Benchmarking elixir_feed_parser with input anxiety...
Benchmarking elixir_feed_parser with input ben...
Benchmarking elixir_feed_parser with input daily...
Benchmarking elixir_feed_parser with input dave...
Benchmarking fast_rss with input anxiety...
Benchmarking fast_rss with input ben...
Benchmarking fast_rss with input daily...
Benchmarking fast_rss with input dave...
```

```
##### With input anxiety #####
Name                         ips        average  deviation         median         99th %
fast_rss                   74.81       13.37 ms     ±6.36%       13.18 ms       16.72 ms
elixir_feed_parser          1.75      570.95 ms     ±3.04%      570.26 ms      627.29 ms

Comparison: 
fast_rss                   74.81
elixir_feed_parser          1.75 - 42.71x slower +557.59 ms

Memory usage statistics:

Name                  Memory usage
fast_rss                   0.65 MB
elixir_feed_parser       313.30 MB - 484.60x memory usage +312.65 MB

**All measurements for memory usage were the same**

##### With input ben #####
Name                         ips        average  deviation         median         99th %
fast_rss                   49.37       20.26 ms     ±5.46%       20.03 ms       24.54 ms
elixir_feed_parser          2.95      339.25 ms     ±4.65%      336.32 ms      411.44 ms

Comparison: 
fast_rss                   49.37
elixir_feed_parser          2.95 - 16.75x slower +319.00 ms

Memory usage statistics:

Name                  Memory usage
fast_rss                   1.35 MB
elixir_feed_parser       163.88 MB - 121.76x memory usage +162.53 MB

**All measurements for memory usage were the same**

##### With input daily #####
Name                         ips        average  deviation         median         99th %
fast_rss                   13.25       0.0755 s     ±5.98%       0.0741 s       0.0898 s
elixir_feed_parser          0.59         1.69 s     ±0.88%         1.68 s         1.72 s

Comparison: 
fast_rss                   13.25
elixir_feed_parser          0.59 - 22.33x slower +1.61 s

Memory usage statistics:

Name                  Memory usage
fast_rss                   3.30 MB
elixir_feed_parser       880.51 MB - 266.72x memory usage +877.21 MB

**All measurements for memory usage were the same**

##### With input dave #####
Name                         ips        average  deviation         median         99th %
fast_rss                  149.52        6.69 ms     ±5.80%        6.60 ms        8.40 ms
elixir_feed_parser          7.59      131.76 ms     ±4.83%      131.74 ms      142.36 ms

Comparison: 
fast_rss                  149.52
elixir_feed_parser          7.59 - 19.70x slower +125.07 ms

Memory usage statistics:

Name                  Memory usage
fast_rss                   0.38 MB
elixir_feed_parser        80.42 MB - 213.48x memory usage +80.05 MB

**All measurements for memory usage were the same**
```
