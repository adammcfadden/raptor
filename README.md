# Raptor

[![Build Status](https://travis-ci.org/adammcfadden/raptor.svg?branch=master)](https://travis-ci.org/adammcfadden/raptor)

A static server written in Elixir. Raptor will serve up whatever directory you put it in. It's aim to low response time, even under high concurrent load.

## Installation

### Released versions (recommended)

erlang is packaged with the release and is not needed as a dependency.

Releases are packaged and can be found at the [Releases](https://github.com/adammcfadden/raptor/releases) tab.

Windows and Unix releases are both published here, and will have the same version number, with the windows release having "-windows" following the version.

#### Windows

* Download `raptor.zip` from [Releases](https://github.com/adammcfadden/raptor/releases).
* unzip `raptor.zip` and place the unzipped version in the folder that you wish to serve
* go to that folder's location with Administrator command prompt
* enter `raptor\bin\raptor.bat install`
  * this installs raptor as a windows service
* enter `raptor\bin\raptor.bat start`
  * this will start the raptor service
  * raptor will serve at localhost:4000
* optional: setup automatic restart of the service if windows is restarted
  * enter `raptor\bin\raptor.bat describe`
  * copy the InternalServiceName (will start with raptor)
  * enter `sc config <InternalServiceName> start=delayed-auto`

#### Unix

* Download `raptor.zip` from [Releases](https://github.com/adammcfadden/raptor/releases).
* unzip `raptor.zip` and place the unzipped version in the folder that you wish to serve
* go to that folder's location with terminal
* enter `raptor/bin/raptor start`
  * This will start raptor as a daemon process
  * raptor will serve at localhost:4000

### From source

You will need elixir installed, which requires erlang as a dependency

```
git clone git@github.com:adammcfadden/raptor.git
cd raptor
mix local.rebar --force
mix local.hex --force
mix deps.get
mix release
```

A prompt will pop up with options of how to run the release build

A release will be created within the `_build/dev/rel/bin` folder. You need to be on a windows machine for windows build, and a unix machine for a unix build

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
