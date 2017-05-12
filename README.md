# Raptor

[![Build Status](https://travis-ci.org/adammcfadden/raptor.svg?branch=master)](https://travis-ci.org/adammcfadden/raptor)

A static server written in Elixir. Raptor will serve up whatever directory you put it in. It's aim to low response time, even under high concurrent load.

## Installation

### Released versions (recommended)

erlang is packaged with the release and is not needed as a dependency.

Releases are packaged and can be found at the [Releases](https://github.com/adammcfadden/raptor/releases) tab.

Windows and Unix releases are both published here, and will have the same version number, with the windows release having "-windows" following the version.

#### Windows

* Download `raptor.tar.gz` from [Releases](https://github.com/adammcfadden/raptor/releases).
* unpack `raptor.tar.gz` into a folder named `raptor`
* place the raptor folder into the directory that you want to serve
* go to the directory you want to serve with Administrator command prompt
* enter `raptor\bin\raptor.bat install`
  * this installs raptor as a windows service
* enter `raptor\bin\raptor.bat start`
  * this will start the raptor service
  * raptor will serve at localhost:4001
* optional: setup automatic restart of the service if windows is restarted
  * enter `raptor\bin\raptor.bat describe`
  * copy the InternalServiceName (will start with raptor)
  * enter `sc config <InternalServiceName> start=delayed-auto`

#### Unix

* Download `raptor.tar.gz` from [Releases](https://github.com/adammcfadden/raptor/releases).
* navigate to the directory you want to serve
* create a raptor dir `mkdir raptor`
* unpack `raptor.tar.gz` into the raptor folder `tar xf raptor.tar.gz -C raptor/`
* enter `raptor/bin/raptor start`
  * This will start raptor as a daemon process
  * raptor will serve at localhost:4001

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

## Configuration

#### Updating the port

* Navigate to the raptor directory
* Open the file `sys.config`
* update the `cowboy_port` setting `{cowboy_port,4001}` will serve the app at port 4001.
* restart raptor

## Development

To test the app in Development
```
iex -S mix
```
then navigate to localhost:4001

## Testing

To run the tests:
```
mix test
```

## License

MIT License

Copyright (c) [2017] [Adam McFadden]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
