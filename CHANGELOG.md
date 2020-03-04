# CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
## [Unreleased]

## [0.3.3] – 2020-02-28
### Fixed
- Pass errors back as `:error` not `:unknown_error`


## [0.3.2] – 2020-02-27
### Changed
- Pass all errors back as `{:error, String.t()}` tuple instead of raising in some cases

## [0.3.1] – 2020-02-24
### Added
- README to hexdocs
- Full license to repo

## [0.3.0] – 2020-02-24
### Fixed
- Use erlang dirty scheduler
- Now requires OTP >= 20
- Added benchmark for normal vs dirty: [normal vs dirty](bench/output/dirty_vs_normal.md)

## [0.2.0] – 2020-02-22

### Changed
  - **Map is returned with string keys instead of atom keys**
  - Now between 6.12x - 50.09x faster than next fastest tested option
  - Removed Jason dependency
  - Returning elixir map directly instead of returning a stringified JSON and then using Jason to convert it to an elixir map

## [0.1.4] – 2020-02-21

- Convert RSS feed into map with atom keys
- Between 2.85x - 22.05x faster than next fastest tested option
