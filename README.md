<h1 align="center" style="border-bottom: none; margin-bottom: 0.25rem;"> FastRSS </h1>
<p align="center">Parse RSS feeds very quickly </p>
<p align="center" style="margin-bottom: 0.50rem;">
    <a href="https://hex.pm/packages/fast_rss"><img alt="Hex.pm" src="https://img.shields.io/hexpm/l/fast_rss"></a>
    <a href="https://hex.pm/packages/fast_rss"><img alt="Hex.pm" src="https://img.shields.io/hexpm/v/fast_rss"></a>
    <a href="https://hex.pm/packages/fast_rss"><img alt="Hex.pm" src="https://img.shields.io/hexpm/dt/fast_rss"></a>
</p>
<p align="center" style="font-weight: bold">
<a href="#installation" style="padding: 0.25rem 0.50rem">Installation</a> 
|
<a href="#usage" style="padding: 0.25rem 0.50rem">Usage</a>
|
<a href="#benchmark" style="padding: 0.25rem 0.50rem">Benchmarks</a>
|
<a href="#deploying" style="padding: 0.25rem 0.50rem">Deploying</a>
|
<a href="#license" style="padding: 0.25rem 0.50rem">License</a>
<p>

---

## Intro

Parse RSS feeds very quickly

- This is rust NIF built using [rustler](https://github.com/rusterlium/rustler)
- Uses the [RSS](https://crates.io/crates/rss) rust crate to do the actual RSS parsing

**Speed**

Currently this is already much faster than most of the pure elixir/erlang packages out there. In benchmarks there are speed improvements anywhere between **6.12x - 50.09x** over the next fastest package ([feeder_ex](https://github.com/manukall/feeder_ex)) that was tested.

Compared to the slowest elixir options tested ([feed_raptor](https://github.com/merongivian/feedraptor), [elixir_feed_parser](https://github.com/fdietz/elixir-feed-parser)), FastRSS was sometimes **259.91x** faster and used **5,412,308.17x** less memory _(0.00156 MB vs 8423.70 MB)_.

See full [benchmarks](#benchmark) below:

## Installation

This package is available on [hex](https://hex.pm/packages/fast_rss).

It can be installed by adding `fast_rss` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fast_rss, "~> 0.2.0"}
  ]
end
```

You also need the rust compiler installed: https://www.rust-lang.org/tools/install

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Usage

There is only one function it takes an RSS string and outputs an `{:ok, map()}` with string keys.

```elixir
iex(1)>  {:ok, map_of_rss} = FastRSS.parse("...rss_feed_string...")
iex(2)> Map.keys(map_of_rss)
["categories", "cloud", "copyright", "description", "docs", "dublin_core_ext",
 "extensions", "generator", "image", "items", "itunes_ext", "language",
 "last_build_date", "link", "managing_editor", "namespaces", "pub_date",
 "rating", "skip_days", "skip_hours", "syndication_ext", "text_input", "title",
 "ttl", "webmaster"]
```

The docs can be found at [https://hexdocs.pm/fast_rss](https://hexdocs.pm/fast_rss).

### Supported Feeds

Reading from the following RSS versions is supported:

- RSS 0.90
- RSS 0.91
- RSS 0.92
- RSS 1.0
- RSS 2.0
- iTunes
- Dublin Core

## Benchmark

HTML: [https://avencera.github.io/fast_rss/](https://avencera.github.io/fast_rss/)

Benchmark run from 2020-02-22 05:23:47.524699Z UTC

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
    <td style="white-space: nowrap; text-align: right">187.87</td>
    <td style="white-space: nowrap; text-align: right">5.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.77%</td>
    <td style="white-space: nowrap; text-align: right">5.50 ms</td>
    <td style="white-space: nowrap; text-align: right">6.07 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">3.83</td>
    <td style="white-space: nowrap; text-align: right">260.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.31%</td>
    <td style="white-space: nowrap; text-align: right">257.94 ms</td>
    <td style="white-space: nowrap; text-align: right">292.82 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.01</td>
    <td style="white-space: nowrap; text-align: right">331.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.68%</td>
    <td style="white-space: nowrap; text-align: right">329.61 ms</td>
    <td style="white-space: nowrap; text-align: right">354.81 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">1.95</td>
    <td style="white-space: nowrap; text-align: right">512.96 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.63%</td>
    <td style="white-space: nowrap; text-align: right">511.14 ms</td>
    <td style="white-space: nowrap; text-align: right">560.28 ms</td>
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
    <td style="white-space: nowrap;text-align: right">187.87</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">3.83</td>
    <td style="white-space: nowrap; text-align: right">49.03x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.01</td>
    <td style="white-space: nowrap; text-align: right">62.34x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">1.95</td>
    <td style="white-space: nowrap; text-align: right">96.37x</td>
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
    <td style="white-space: nowrap">0.00153 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">17.21 MB</td>
    <td>11223.73x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">268.63 MB</td>
    <td>175173.81x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">313.30 MB</td>
    <td>204302.48x</td>
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
    <td style="white-space: nowrap; text-align: right">83.88</td>
    <td style="white-space: nowrap; text-align: right">11.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.92%</td>
    <td style="white-space: nowrap; text-align: right">12.32 ms</td>
    <td style="white-space: nowrap; text-align: right">14.95 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">13.33</td>
    <td style="white-space: nowrap; text-align: right">75.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.23%</td>
    <td style="white-space: nowrap; text-align: right">74.61 ms</td>
    <td style="white-space: nowrap; text-align: right">80.51 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">3.58</td>
    <td style="white-space: nowrap; text-align: right">279.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.68%</td>
    <td style="white-space: nowrap; text-align: right">279.29 ms</td>
    <td style="white-space: nowrap; text-align: right">301.63 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.48</td>
    <td style="white-space: nowrap; text-align: right">2073.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.63%</td>
    <td style="white-space: nowrap; text-align: right">2071.30 ms</td>
    <td style="white-space: nowrap; text-align: right">2099.29 ms</td>
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
    <td style="white-space: nowrap;text-align: right">83.88</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">13.33</td>
    <td style="white-space: nowrap; text-align: right">6.29x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">3.58</td>
    <td style="white-space: nowrap; text-align: right">23.41x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.48</td>
    <td style="white-space: nowrap; text-align: right">173.9x</td>
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
    <td style="white-space: nowrap">0.00153 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">27.86 MB</td>
    <td>18169.98x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">163.88 MB</td>
    <td>106864.74x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">1577.38 MB</td>
    <td>1028611.82x</td>
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
    <td style="white-space: nowrap; text-align: right">32.52</td>
    <td style="white-space: nowrap; text-align: right">0.0308 s</td>
    <td style="white-space: nowrap; text-align: right">±8.07%</td>
    <td style="white-space: nowrap; text-align: right">0.0317 s</td>
    <td style="white-space: nowrap; text-align: right">0.0349 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">5.03</td>
    <td style="white-space: nowrap; text-align: right">0.199 s</td>
    <td style="white-space: nowrap; text-align: right">±1.38%</td>
    <td style="white-space: nowrap; text-align: right">0.198 s</td>
    <td style="white-space: nowrap; text-align: right">0.22 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.64</td>
    <td style="white-space: nowrap; text-align: right">1.57 s</td>
    <td style="white-space: nowrap; text-align: right">±1.03%</td>
    <td style="white-space: nowrap; text-align: right">1.57 s</td>
    <td style="white-space: nowrap; text-align: right">1.60 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.127</td>
    <td style="white-space: nowrap; text-align: right">7.86 s</td>
    <td style="white-space: nowrap; text-align: right">±0.28%</td>
    <td style="white-space: nowrap; text-align: right">7.85 s</td>
    <td style="white-space: nowrap; text-align: right">7.89 s</td>
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
    <td style="white-space: nowrap;text-align: right">32.52</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">5.03</td>
    <td style="white-space: nowrap; text-align: right">6.47x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.64</td>
    <td style="white-space: nowrap; text-align: right">51.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.127</td>
    <td style="white-space: nowrap; text-align: right">255.53x</td>
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
    <td style="white-space: nowrap">0.00154 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">109.73 MB</td>
    <td>71201.54x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">880.51 MB</td>
    <td>571336.48x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">6386.15 MB</td>
    <td>4143790.06x</td>
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
    <td style="white-space: nowrap; text-align: right">399.65</td>
    <td style="white-space: nowrap; text-align: right">2.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.60%</td>
    <td style="white-space: nowrap; text-align: right">2.48 ms</td>
    <td style="white-space: nowrap; text-align: right">3.39 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">57.18</td>
    <td style="white-space: nowrap; text-align: right">17.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.15%</td>
    <td style="white-space: nowrap; text-align: right">17.44 ms</td>
    <td style="white-space: nowrap; text-align: right">18.48 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">9.06</td>
    <td style="white-space: nowrap; text-align: right">110.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.61%</td>
    <td style="white-space: nowrap; text-align: right">109.65 ms</td>
    <td style="white-space: nowrap; text-align: right">134.74 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">1.57</td>
    <td style="white-space: nowrap; text-align: right">636.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.49%</td>
    <td style="white-space: nowrap; text-align: right">637.79 ms</td>
    <td style="white-space: nowrap; text-align: right">664.67 ms</td>
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
    <td style="white-space: nowrap;text-align: right">399.65</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">57.18</td>
    <td style="white-space: nowrap; text-align: right">6.99x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">9.06</td>
    <td style="white-space: nowrap; text-align: right">44.13x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">1.57</td>
    <td style="white-space: nowrap; text-align: right">254.47x</td>
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
    <td style="white-space: nowrap">0.00155 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">9.25 MB</td>
    <td>5973.16x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">80.42 MB</td>
    <td>51926.44x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">571.15 MB</td>
    <td>368775.6x</td>
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
    <td style="white-space: nowrap; text-align: right">740.80</td>
    <td style="white-space: nowrap; text-align: right">1.35 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.51%</td>
    <td style="white-space: nowrap; text-align: right">1.27 ms</td>
    <td style="white-space: nowrap; text-align: right">2.19 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">124.75</td>
    <td style="white-space: nowrap; text-align: right">8.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.67%</td>
    <td style="white-space: nowrap; text-align: right">8.05 ms</td>
    <td style="white-space: nowrap; text-align: right">8.68 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">26.83</td>
    <td style="white-space: nowrap; text-align: right">37.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.23%</td>
    <td style="white-space: nowrap; text-align: right">36.94 ms</td>
    <td style="white-space: nowrap; text-align: right">44.24 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.12</td>
    <td style="white-space: nowrap; text-align: right">320.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.17%</td>
    <td style="white-space: nowrap; text-align: right">313.72 ms</td>
    <td style="white-space: nowrap; text-align: right">368.94 ms</td>
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
    <td style="white-space: nowrap;text-align: right">740.80</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">124.75</td>
    <td style="white-space: nowrap; text-align: right">5.94x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">26.83</td>
    <td style="white-space: nowrap; text-align: right">27.61x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.12</td>
    <td style="white-space: nowrap; text-align: right">237.31x</td>
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
    <td style="white-space: nowrap">0.00154 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">4.28 MB</td>
    <td>2780.17x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">35.88 MB</td>
    <td>23282.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">274.98 MB</td>
    <td>178428.65x</td>
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
    <td style="white-space: nowrap; text-align: right">18.95</td>
    <td style="white-space: nowrap; text-align: right">0.0528 s</td>
    <td style="white-space: nowrap; text-align: right">±9.87%</td>
    <td style="white-space: nowrap; text-align: right">0.0550 s</td>
    <td style="white-space: nowrap; text-align: right">0.0644 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">0.97</td>
    <td style="white-space: nowrap; text-align: right">1.04 s</td>
    <td style="white-space: nowrap; text-align: right">±1.40%</td>
    <td style="white-space: nowrap; text-align: right">1.04 s</td>
    <td style="white-space: nowrap; text-align: right">1.07 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.53</td>
    <td style="white-space: nowrap; text-align: right">1.88 s</td>
    <td style="white-space: nowrap; text-align: right">±1.49%</td>
    <td style="white-space: nowrap; text-align: right">1.88 s</td>
    <td style="white-space: nowrap; text-align: right">1.91 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.0812</td>
    <td style="white-space: nowrap; text-align: right">12.32 s</td>
    <td style="white-space: nowrap; text-align: right">±0.15%</td>
    <td style="white-space: nowrap; text-align: right">12.32 s</td>
    <td style="white-space: nowrap; text-align: right">12.33 s</td>
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
    <td style="white-space: nowrap;text-align: right">18.95</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">0.97</td>
    <td style="white-space: nowrap; text-align: right">19.63x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.53</td>
    <td style="white-space: nowrap; text-align: right">35.54x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.0812</td>
    <td style="white-space: nowrap; text-align: right">233.47x</td>
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
    <td style="white-space: nowrap">0.00156 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">140.58 MB</td>
    <td>90326.23x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">1018.78 MB</td>
    <td>654577.31x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">8423.70 MB</td>
    <td>5412308.17x</td>
  </tr>
</table>
<hr/>

## Deploying

Deploying rust NIFs can be a little bit annoying as you have to install the rust compiler. If you are having trouble deploying this package make an issue and I will try and help you out.

I will then add it to the FAQ below.

### Q. How do I deploy using an Alpine Dockerfile?

#### A. I recommend using a [multi-stage Dockerfile](https://docs.docker.com/develop/develop-images/multistage-build/), and doing the following

1. On the stages where you build all your deps, and build your release make sure to install `build-base` and `libgcc`:

```docker
# This step installs all the build tools we'll need
RUN apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache \
    git \
    curl \
    build-base \
    libgcc  && \
    mix local.rebar --force && \
    mix local.hex --force
```

2. Install the rust compiler and set the flag to enable dynamic linking to the C library

```docker
# install rustup
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN source /root/.cargo/env
ENV RUSTUP_HOME=/root/.rustup \
    RUSTFLAGS="-C target-feature=-crt-static" \
    CARGO_HOME=/root/.cargo  \
    PATH="/root/.cargo/bin:$PATH"
```

3. On the stage where you actually run your elixir release install `libgcc`:

```docker
################################################################################
## STEP 4 - FINAL
FROM alpine:3.11

ENV MIX_ENV=prod

RUN apk update && \
    apk add --no-cache \
    bash \
    libgcc \
    openssl-dev

COPY --from=release-builder /opt/built /app
WORKDIR /app
CMD ["/app/my_app/bin/my_app", "start"]
```

## License

FastRSS is released under the Apache License 2.0 - see the [LICENSE](/LICENSE) file.
