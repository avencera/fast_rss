# Benchmark

Benchmark run from 2020-02-22 16:45:18.188095Z UTC

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
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">188.57</td>
    <td style="white-space: nowrap; text-align: right">5.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.26%</td>
    <td style="white-space: nowrap; text-align: right">5.45 ms</td>
    <td style="white-space: nowrap; text-align: right">6.43 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">269.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.34%</td>
    <td style="white-space: nowrap; text-align: right">268.12 ms</td>
    <td style="white-space: nowrap; text-align: right">316.12 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">2.99</td>
    <td style="white-space: nowrap; text-align: right">334.01 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.44%</td>
    <td style="white-space: nowrap; text-align: right">331.03 ms</td>
    <td style="white-space: nowrap; text-align: right">371.28 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">1.94</td>
    <td style="white-space: nowrap; text-align: right">515.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.94%</td>
    <td style="white-space: nowrap; text-align: right">516.10 ms</td>
    <td style="white-space: nowrap; text-align: right">536.05 ms</td>
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
    <td style="white-space: nowrap;text-align: right">188.57</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">50.9x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">2.99</td>
    <td style="white-space: nowrap; text-align: right">62.99x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">1.94</td>
    <td style="white-space: nowrap; text-align: right">97.25x</td>
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
    <td style="white-space: nowrap">17.21 MB</td>
    <td>11004.73x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">268.53 MB</td>
    <td>171693.91x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">313.30 MB</td>
    <td>200316.09x</td>
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
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">83.95</td>
    <td style="white-space: nowrap; text-align: right">11.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.29%</td>
    <td style="white-space: nowrap; text-align: right">12.23 ms</td>
    <td style="white-space: nowrap; text-align: right">16.17 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">13.33</td>
    <td style="white-space: nowrap; text-align: right">75.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.38%</td>
    <td style="white-space: nowrap; text-align: right">74.21 ms</td>
    <td style="white-space: nowrap; text-align: right">89.72 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">3.52</td>
    <td style="white-space: nowrap; text-align: right">284.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.89%</td>
    <td style="white-space: nowrap; text-align: right">283.83 ms</td>
    <td style="white-space: nowrap; text-align: right">324.08 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.48</td>
    <td style="white-space: nowrap; text-align: right">2078.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.52%</td>
    <td style="white-space: nowrap; text-align: right">2076.27 ms</td>
    <td style="white-space: nowrap; text-align: right">2097.44 ms</td>
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
    <td style="white-space: nowrap;text-align: right">83.95</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">13.33</td>
    <td style="white-space: nowrap; text-align: right">6.3x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">3.52</td>
    <td style="white-space: nowrap; text-align: right">23.86x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.48</td>
    <td style="white-space: nowrap; text-align: right">174.51x</td>
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
    <td style="white-space: nowrap">27.86 MB</td>
    <td>17990.96x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">163.88 MB</td>
    <td>105811.88x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">1577.41 MB</td>
    <td>1018492.36x</td>
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
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">32.98</td>
    <td style="white-space: nowrap; text-align: right">0.0303 s</td>
    <td style="white-space: nowrap; text-align: right">±7.62%</td>
    <td style="white-space: nowrap; text-align: right">0.0313 s</td>
    <td style="white-space: nowrap; text-align: right">0.0339 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">4.94</td>
    <td style="white-space: nowrap; text-align: right">0.20 s</td>
    <td style="white-space: nowrap; text-align: right">±4.61%</td>
    <td style="white-space: nowrap; text-align: right">0.199 s</td>
    <td style="white-space: nowrap; text-align: right">0.24 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.64</td>
    <td style="white-space: nowrap; text-align: right">1.57 s</td>
    <td style="white-space: nowrap; text-align: right">±1.50%</td>
    <td style="white-space: nowrap; text-align: right">1.57 s</td>
    <td style="white-space: nowrap; text-align: right">1.63 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.127</td>
    <td style="white-space: nowrap; text-align: right">7.88 s</td>
    <td style="white-space: nowrap; text-align: right">±0.23%</td>
    <td style="white-space: nowrap; text-align: right">7.88 s</td>
    <td style="white-space: nowrap; text-align: right">7.90 s</td>
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
    <td style="white-space: nowrap;text-align: right">32.98</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">4.94</td>
    <td style="white-space: nowrap; text-align: right">6.68x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.64</td>
    <td style="white-space: nowrap; text-align: right">51.86x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.127</td>
    <td style="white-space: nowrap; text-align: right">259.91x</td>
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
    <td style="white-space: nowrap">109.73 MB</td>
    <td>71555.78x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">880.51 MB</td>
    <td>574178.95x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">6386.12 MB</td>
    <td>4164382.64x</td>
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
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">407.08</td>
    <td style="white-space: nowrap; text-align: right">2.46 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.83%</td>
    <td style="white-space: nowrap; text-align: right">2.41 ms</td>
    <td style="white-space: nowrap; text-align: right">3.16 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">56.52</td>
    <td style="white-space: nowrap; text-align: right">17.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.14%</td>
    <td style="white-space: nowrap; text-align: right">17.37 ms</td>
    <td style="white-space: nowrap; text-align: right">22.51 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">8.90</td>
    <td style="white-space: nowrap; text-align: right">112.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.12%</td>
    <td style="white-space: nowrap; text-align: right">111.93 ms</td>
    <td style="white-space: nowrap; text-align: right">127.60 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">1.59</td>
    <td style="white-space: nowrap; text-align: right">628.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.60%</td>
    <td style="white-space: nowrap; text-align: right">626.71 ms</td>
    <td style="white-space: nowrap; text-align: right">656.74 ms</td>
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
    <td style="white-space: nowrap;text-align: right">407.08</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">56.52</td>
    <td style="white-space: nowrap; text-align: right">7.2x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">8.90</td>
    <td style="white-space: nowrap; text-align: right">45.72x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">1.59</td>
    <td style="white-space: nowrap; text-align: right">255.83x</td>
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
    <td style="white-space: nowrap">0.00157 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">9.25 MB</td>
    <td>5886.17x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">80.42 MB</td>
    <td>51170.23x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">571.18 MB</td>
    <td>363425.45x</td>
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
    <td style="white-space: nowrap; text-align: right">760.30</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.62%</td>
    <td style="white-space: nowrap; text-align: right">1.21 ms</td>
    <td style="white-space: nowrap; text-align: right">2.03 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">124.28</td>
    <td style="white-space: nowrap; text-align: right">8.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.94%</td>
    <td style="white-space: nowrap; text-align: right">8.03 ms</td>
    <td style="white-space: nowrap; text-align: right">10.32 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">26.26</td>
    <td style="white-space: nowrap; text-align: right">38.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.08%</td>
    <td style="white-space: nowrap; text-align: right">37.81 ms</td>
    <td style="white-space: nowrap; text-align: right">44.42 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.21</td>
    <td style="white-space: nowrap; text-align: right">311.16 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.85%</td>
    <td style="white-space: nowrap; text-align: right">307.86 ms</td>
    <td style="white-space: nowrap; text-align: right">345.09 ms</td>
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
    <td style="white-space: nowrap;text-align: right">760.30</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">124.28</td>
    <td style="white-space: nowrap; text-align: right">6.12x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">26.26</td>
    <td style="white-space: nowrap; text-align: right">28.96x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">3.21</td>
    <td style="white-space: nowrap; text-align: right">236.57x</td>
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
    <td style="white-space: nowrap">0.00157 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap">4.28 MB</td>
    <td>2726.19x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">35.88 MB</td>
    <td>22829.92x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">274.98 MB</td>
    <td>174963.99x</td>
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
    <td style="white-space: nowrap">fast_rss</td>
    <td style="white-space: nowrap; text-align: right">19.19</td>
    <td style="white-space: nowrap; text-align: right">0.0521 s</td>
    <td style="white-space: nowrap; text-align: right">±9.19%</td>
    <td style="white-space: nowrap; text-align: right">0.0546 s</td>
    <td style="white-space: nowrap; text-align: right">0.0635 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">0.93</td>
    <td style="white-space: nowrap; text-align: right">1.07 s</td>
    <td style="white-space: nowrap; text-align: right">±2.49%</td>
    <td style="white-space: nowrap; text-align: right">1.07 s</td>
    <td style="white-space: nowrap; text-align: right">1.15 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.53</td>
    <td style="white-space: nowrap; text-align: right">1.88 s</td>
    <td style="white-space: nowrap; text-align: right">±1.22%</td>
    <td style="white-space: nowrap; text-align: right">1.89 s</td>
    <td style="white-space: nowrap; text-align: right">1.92 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.0797</td>
    <td style="white-space: nowrap; text-align: right">12.54 s</td>
    <td style="white-space: nowrap; text-align: right">±1.61%</td>
    <td style="white-space: nowrap; text-align: right">12.44 s</td>
    <td style="white-space: nowrap; text-align: right">12.77 s</td>
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
    <td style="white-space: nowrap;text-align: right">19.19</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feeder_ex</td>
    <td style="white-space: nowrap; text-align: right">0.93</td>
    <td style="white-space: nowrap; text-align: right">20.59x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap; text-align: right">0.53</td>
    <td style="white-space: nowrap; text-align: right">36.11x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap; text-align: right">0.0797</td>
    <td style="white-space: nowrap; text-align: right">240.68x</td>
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
    <td style="white-space: nowrap">140.58 MB</td>
    <td>91220.55x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">elixir_feed_parser</td>
    <td style="white-space: nowrap">1018.78 MB</td>
    <td>661058.28x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">feed_raptor</td>
    <td style="white-space: nowrap">8424.44 MB</td>
    <td>5466379.81x</td>
  </tr>
</table>
<hr/>
