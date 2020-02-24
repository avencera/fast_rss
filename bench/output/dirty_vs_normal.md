# Benchmark

Benchmark run from 2020-02-24 17:47:14.874356Z UTC

## System

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

## Configuration

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

## Statistics


__Input: anxiety__

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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap; text-align: right">190.64</td>
    <td style="white-space: nowrap; text-align: right">5.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.99%</td>
    <td style="white-space: nowrap; text-align: right">5.20 ms</td>
    <td style="white-space: nowrap; text-align: right">6.91 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">181.09</td>
    <td style="white-space: nowrap; text-align: right">5.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.76%</td>
    <td style="white-space: nowrap; text-align: right">5.64 ms</td>
    <td style="white-space: nowrap; text-align: right">6.75 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap;text-align: right">190.64</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">181.09</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap">1.60 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">1.60 KB</td>
    <td>1.0x</td>
  </tr>
</table>
<hr/>

__Input: ben__

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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap; text-align: right">87.20</td>
    <td style="white-space: nowrap; text-align: right">11.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.23%</td>
    <td style="white-space: nowrap; text-align: right">11.50 ms</td>
    <td style="white-space: nowrap; text-align: right">14.08 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">82.36</td>
    <td style="white-space: nowrap; text-align: right">12.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.38%</td>
    <td style="white-space: nowrap; text-align: right">12.46 ms</td>
    <td style="white-space: nowrap; text-align: right">14.66 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap;text-align: right">87.20</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">82.36</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap">1.59 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">1.59 KB</td>
    <td>1.0x</td>
  </tr>
</table>
<hr/>

__Input: daily__

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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap; text-align: right">33.98</td>
    <td style="white-space: nowrap; text-align: right">29.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.81%</td>
    <td style="white-space: nowrap; text-align: right">29.18 ms</td>
    <td style="white-space: nowrap; text-align: right">34.33 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">31.55</td>
    <td style="white-space: nowrap; text-align: right">31.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.82%</td>
    <td style="white-space: nowrap; text-align: right">32.37 ms</td>
    <td style="white-space: nowrap; text-align: right">38.51 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap;text-align: right">33.98</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">31.55</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap">1.59 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">1.57 KB</td>
    <td>0.99x</td>
  </tr>
</table>
<hr/>

__Input: dave__

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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap; text-align: right">402.17</td>
    <td style="white-space: nowrap; text-align: right">2.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.41%</td>
    <td style="white-space: nowrap; text-align: right">2.46 ms</td>
    <td style="white-space: nowrap; text-align: right">3.40 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">393.98</td>
    <td style="white-space: nowrap; text-align: right">2.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.99%</td>
    <td style="white-space: nowrap; text-align: right">2.52 ms</td>
    <td style="white-space: nowrap; text-align: right">3.37 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap;text-align: right">402.17</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">393.98</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap">1.61 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">1.61 KB</td>
    <td>1.0x</td>
  </tr>
</table>
<hr/>

__Input: sleepy__

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
    <td style="white-space: nowrap; text-align: right">751.01</td>
    <td style="white-space: nowrap; text-align: right">1.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.67%</td>
    <td style="white-space: nowrap; text-align: right">1.21 ms</td>
    <td style="white-space: nowrap; text-align: right">2.14 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap; text-align: right">736.44</td>
    <td style="white-space: nowrap; text-align: right">1.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.42%</td>
    <td style="white-space: nowrap; text-align: right">1.29 ms</td>
    <td style="white-space: nowrap; text-align: right">1.98 ms</td>
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
    <td style="white-space: nowrap;text-align: right">751.01</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap; text-align: right">736.44</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
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
    <td style="white-space: nowrap">1.61 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap">1.61 KB</td>
    <td>1.0x</td>
  </tr>
</table>
<hr/>

__Input: stuff__

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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap; text-align: right">19.86</td>
    <td style="white-space: nowrap; text-align: right">50.35 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.62%</td>
    <td style="white-space: nowrap; text-align: right">53.60 ms</td>
    <td style="white-space: nowrap; text-align: right">57.65 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">19.36</td>
    <td style="white-space: nowrap; text-align: right">51.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.68%</td>
    <td style="white-space: nowrap; text-align: right">53.54 ms</td>
    <td style="white-space: nowrap; text-align: right">62.30 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap;text-align: right">19.86</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">19.36</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
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
    <td style="white-space: nowrap">fast_rss_dirty</td>
    <td style="white-space: nowrap">1.60 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>0.99x</td>
  </tr>
</table>
<hr/>
