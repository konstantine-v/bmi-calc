# BMI Calculator

[![Language](https://img.shields.io/badge/language-crystal-776791.svg)](https://github.com/crystal-lang/crystal)
![Status](https://img.shields.io/badge/status-WIP-blue.svg)

A simple CLI tool to calculate your BMI, written in Crystal Lang.

Requires Admiral Shard

*Please Note* - This only works with Imperial Units as of currently, the idea is to have this working with Metric units much like the earlier version of this.

## Installation / Development

- Install using `shards install`
- `crystal build src/bmi-cli.cr`
- `mv bmi-cli bin/ && mv bmi-cli.dwarf bin/`

## Usage

Run `bin/bmi-cli --help` to see help screen with all info on it.

You can use the tool by running a command from the binary you created (and moved). This will work like any old binary.
`./bmi-cli` - This will pass in all the defaults through so you can see how it works

You can pass in your own flags to input your own data
`./bmi-cli imperial --height=6.5 --weight=190 --name=Jimbob `

This should output something like...
```
Hey JimBob!
Calculating BMI...
Your BMI is: 20.798816568047336
You're considered: Normal
```

There's also defaults set so that if a field is missing it'll have something to pass through
Right now the defaults are;
- `units`  -> `"Imperial"`
- `height` -> `5.11`
- `weight` -> `180`
To see all defaults run `bin/bmi-cli --help`.

You can change the output to fit whatever project, like a csv file for example: `./bmi-cli --height=6.5 --weight=190 >> log.csv`

## Development/Contributing

If you want to contribute, just make a pull request and I'll merge it in if it's relivant. I'd recommend just forking though.
Feel free to extend this project however you wish

1. Fork it (<https://github.com/your-github-user/bmi-cli/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [@MaterialFuture](https://github.com/materialfuture) - Creator and Maintainer


### Notes

*Please Note* - This only works with Imperial Units as of currently, the idea is to have this working with Metric units much like the earlier version of this.

This is still a work in progress, the BMI calculation will include; a different more modern equation, include age, and have option to output from the flags (if that's reasonable).

I'm also going to have you be able to specify how you want your files to be output so you get the data how you want.

Tests will also need to be written just for debugging (and practice for myself)