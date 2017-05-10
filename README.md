# Raptor

[![Build Status](https://travis-ci.org/adammcfadden/raptor.svg?branch=master)](https://travis-ci.org/adammcfadden/raptor)
[![Build status](https://ci.appveyor.com/api/projects/status/bqq9fnliqlbwti6i/branch/master?svg=true)](https://ci.appveyor.com/project/adammcfadden/raptor/branch/master)

A static server written in Elixir.

## Installation

```
git clone git@github.com:adammcfadden/raptor.git
cd raptor
mix deps.get
mix release
```

A prompt will pop up with options of how to run the release build

A release will be created for unix and windows within the `_build/dev/rel/bin` folder.

## Development

To test the app in Development
```
iex -S mix
```
then navigate to localhost:4000

## Testing

To run the tests:
```
mix test
```
