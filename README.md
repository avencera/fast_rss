# FastRSS

Parse RSS feeds very quickly

* This is rust NIF built using [rustler](https://github.com/rusterlium/rustler)
* Uses the [RSS](https://crates.io/crates/rss) crate to do the actual RSS parsing

**Speed**

Currently this is already much faster than most of the pure elixir/erlang packages out there. In benchmarks there are speed improvements anywhere between **2.85x - 22.05x** over the next fastest package [feeder_ex](https://github.com/manukall/feeder_ex) that was tested.

Compared to the slowest elixir options tested ([feed_raptor](https://github.com/merongivian/feedraptor), [elixir_feed_parser](https://github.com/fdietz/elixir-feed-parser)), FastRSS was sometimes **127.21x** faster and used **2091.61x** less memory.

See [benchmarks](#benchmark) below for more.

With all that being said, this package could probably be made even faster by properly using [serde_rustler](https://github.com/sunny-g/serde_rustler) to directly convert the [`rss:Channel`](https://docs.rs/rss/1.9.0/rss/struct.Channel.html) into an elixir map (PRs welcome)

Currently we do this very naively, the process is:
  1. On the rust side we serialize the [`rss:Channel`](https://docs.rs/rss/1.9.0/rss/struct.Channel.html) it into a JSON string using [`serde_json`](https://docs.serde.rs/serde_json/)
  2. Then on the elixir side we deserialize the JSON string into a elixir map using [`Jason`](https://github.com/michalmuskala/jason)

## Installation

This package is available on [hex](https://hex.pm/packages/fast_rss).

It can be installed by adding `fast_rss` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fast_rss, "~> 0.1.4"}
  ]
end
```

You also need the rust compiler installed: https://www.rust-lang.org/tools/install

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Usage

There is only one function it takes an RSS string and outputs an `{:ok, map()}`

```elixir
iex(1)> FastRSS.parse("...rss_feed_string...")
iex(2)> {:ok, map_of_rss}
```

The docs can be found at [https://hexdocs.pm/fast_rss](https://hexdocs.pm/fast_rss).

## Benchmark

HTML: https://avencera.github.io/fast_rss/

Benchmark run from 2020-02-21 18:07:35.376657Z UTC

### System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">16</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">32 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.10.1</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">22.2.6</td>
  </tr>
</table>

### Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">30 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">5 s</td>
  </tr>
</table>

### Statistics

**Input: anxiety**

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">81.22</td>
    <td style="white-space: nowrap; text-align: right">12.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.67%</td>
    <td style="white-space: nowrap; text-align: right">12.27 ms</td>
    <td style="white-space: nowrap; text-align: right">13.58 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">3.68</td>
    <td style="white-space: nowrap; text-align: right">271.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.44%</td>
    <td style="white-space: nowrap; text-align: right">266.17 ms</td>
    <td style="white-space: nowrap; text-align: right">313.98 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.05</td>
    <td style="white-space: nowrap; text-align: right">328.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.89%</td>
    <td style="white-space: nowrap; text-align: right">328.01 ms</td>
    <td style="white-space: nowrap; text-align: right">347.03 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">1.97</td>
    <td style="white-space: nowrap; text-align: right">506.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.33%</td>
    <td style="white-space: nowrap; text-align: right">506.76 ms</td>
    <td style="white-space: nowrap; text-align: right">524.07 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap;text-align: right">81.22</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">3.68</td>
    <td style="white-space: nowrap; text-align: right">22.05x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.05</td>
    <td style="white-space: nowrap; text-align: right">26.66x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">1.97</td>
    <td style="white-space: nowrap; text-align: right">41.17x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">0.65 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">17.21 MB</td>
    <td>26.62x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">268.54 MB</td>
    <td>415.36x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">313.30 MB</td>
    <td>484.6x</td>
  </tr>
</table>
<hr/>

**Input: ben**

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">52.83</td>
    <td style="white-space: nowrap; text-align: right">18.93 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.43%</td>
    <td style="white-space: nowrap; text-align: right">18.94 ms</td>
    <td style="white-space: nowrap; text-align: right">19.68 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">13.24</td>
    <td style="white-space: nowrap; text-align: right">75.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.19%</td>
    <td style="white-space: nowrap; text-align: right">75.19 ms</td>
    <td style="white-space: nowrap; text-align: right">83.40 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">3.61</td>
    <td style="white-space: nowrap; text-align: right">276.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.84%</td>
    <td style="white-space: nowrap; text-align: right">275.63 ms</td>
    <td style="white-space: nowrap; text-align: right">322.99 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.48</td>
    <td style="white-space: nowrap; text-align: right">2080.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.57%</td>
    <td style="white-space: nowrap; text-align: right">2075.11 ms</td>
    <td style="white-space: nowrap; text-align: right">2112.08 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap;text-align: right">52.83</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">13.24</td>
    <td style="white-space: nowrap; text-align: right">3.99x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">3.61</td>
    <td style="white-space: nowrap; text-align: right">14.62x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.48</td>
    <td style="white-space: nowrap; text-align: right">109.89x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">1.35 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">27.86 MB</td>
    <td>20.7x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">163.88 MB</td>
    <td>121.76x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">1577.40 MB</td>
    <td>1172.03x</td>
  </tr>
</table>
<hr/>

**Input: daily**

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">14.28</td>
    <td style="white-space: nowrap; text-align: right">0.0700 s</td>
    <td style="white-space: nowrap; text-align: right">±2.59%</td>
    <td style="white-space: nowrap; text-align: right">0.0695 s</td>
    <td style="white-space: nowrap; text-align: right">0.0776 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">5.02</td>
    <td style="white-space: nowrap; text-align: right">0.199 s</td>
    <td style="white-space: nowrap; text-align: right">±1.52%</td>
    <td style="white-space: nowrap; text-align: right">0.198 s</td>
    <td style="white-space: nowrap; text-align: right">0.21 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.65</td>
    <td style="white-space: nowrap; text-align: right">1.55 s</td>
    <td style="white-space: nowrap; text-align: right">±1.25%</td>
    <td style="white-space: nowrap; text-align: right">1.55 s</td>
    <td style="white-space: nowrap; text-align: right">1.59 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.126</td>
    <td style="white-space: nowrap; text-align: right">7.91 s</td>
    <td style="white-space: nowrap; text-align: right">±0.28%</td>
    <td style="white-space: nowrap; text-align: right">7.92 s</td>
    <td style="white-space: nowrap; text-align: right">7.92 s</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap;text-align: right">14.28</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">5.02</td>
    <td style="white-space: nowrap; text-align: right">2.85x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.65</td>
    <td style="white-space: nowrap; text-align: right">22.1x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.126</td>
    <td style="white-space: nowrap; text-align: right">112.97x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">3.30 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">109.73 MB</td>
    <td>33.24x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">880.51 MB</td>
    <td>266.72x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">6386.15 MB</td>
    <td>1934.48x</td>
  </tr>
</table>
<hr/>

**Input: dave**

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">155.84</td>
    <td style="white-space: nowrap; text-align: right">6.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.37%</td>
    <td style="white-space: nowrap; text-align: right">6.40 ms</td>
    <td style="white-space: nowrap; text-align: right">6.98 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">55.88</td>
    <td style="white-space: nowrap; text-align: right">17.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.45%</td>
    <td style="white-space: nowrap; text-align: right">17.50 ms</td>
    <td style="white-space: nowrap; text-align: right">20.48 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">9.10</td>
    <td style="white-space: nowrap; text-align: right">109.93 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.71%</td>
    <td style="white-space: nowrap; text-align: right">109.59 ms</td>
    <td style="white-space: nowrap; text-align: right">123.09 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">1.58</td>
    <td style="white-space: nowrap; text-align: right">631.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.44%</td>
    <td style="white-space: nowrap; text-align: right">632.06 ms</td>
    <td style="white-space: nowrap; text-align: right">652.61 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap;text-align: right">155.84</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">55.88</td>
    <td style="white-space: nowrap; text-align: right">2.79x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">9.10</td>
    <td style="white-space: nowrap; text-align: right">17.13x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">1.58</td>
    <td style="white-space: nowrap; text-align: right">98.49x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">0.38 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">9.25 MB</td>
    <td>24.56x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">80.42 MB</td>
    <td>213.48x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">571.18 MB</td>
    <td>1516.17x</td>
  </tr>
</table>
<hr/>

**Input: sleepy**

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">368.53</td>
    <td style="white-space: nowrap; text-align: right">2.71 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.71%</td>
    <td style="white-space: nowrap; text-align: right">2.71 ms</td>
    <td style="white-space: nowrap; text-align: right">2.90 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">124.50</td>
    <td style="white-space: nowrap; text-align: right">8.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.82%</td>
    <td style="white-space: nowrap; text-align: right">7.95 ms</td>
    <td style="white-space: nowrap; text-align: right">9.84 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">26.79</td>
    <td style="white-space: nowrap; text-align: right">37.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.84%</td>
    <td style="white-space: nowrap; text-align: right">37.19 ms</td>
    <td style="white-space: nowrap; text-align: right">41.86 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">312.83 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.22%</td>
    <td style="white-space: nowrap; text-align: right">310.43 ms</td>
    <td style="white-space: nowrap; text-align: right">353.46 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap;text-align: right">368.53</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">124.50</td>
    <td style="white-space: nowrap; text-align: right">2.96x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">26.79</td>
    <td style="white-space: nowrap; text-align: right">13.76x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">115.29x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">0.131 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">4.28 MB</td>
    <td>32.59x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">35.88 MB</td>
    <td>272.92x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">274.98 MB</td>
    <td>2091.61x</td>
  </tr>
</table>
<hr/>

**Input: stuff**

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">10.10</td>
    <td style="white-space: nowrap; text-align: right">0.0990 s</td>
    <td style="white-space: nowrap; text-align: right">±1.57%</td>
    <td style="white-space: nowrap; text-align: right">0.0988 s</td>
    <td style="white-space: nowrap; text-align: right">0.106 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">0.95</td>
    <td style="white-space: nowrap; text-align: right">1.05 s</td>
    <td style="white-space: nowrap; text-align: right">±1.31%</td>
    <td style="white-space: nowrap; text-align: right">1.05 s</td>
    <td style="white-space: nowrap; text-align: right">1.08 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.54</td>
    <td style="white-space: nowrap; text-align: right">1.86 s</td>
    <td style="white-space: nowrap; text-align: right">±1.43%</td>
    <td style="white-space: nowrap; text-align: right">1.86 s</td>
    <td style="white-space: nowrap; text-align: right">1.90 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.0794</td>
    <td style="white-space: nowrap; text-align: right">12.59 s</td>
    <td style="white-space: nowrap; text-align: right">±1.63%</td>
    <td style="white-space: nowrap; text-align: right">12.54 s</td>
    <td style="white-space: nowrap; text-align: right">12.82 s</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap;text-align: right">10.10</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">0.95</td>
    <td style="white-space: nowrap; text-align: right">10.58x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.54</td>
    <td style="white-space: nowrap; text-align: right">18.79x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.0794</td>
    <td style="white-space: nowrap; text-align: right">127.21x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">5.52 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">140.58 MB</td>
    <td>25.48x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">1018.78 MB</td>
    <td>184.61x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">8425.39 MB</td>
    <td>1526.77x</td>
  </tr>
</table>
<hr/>
