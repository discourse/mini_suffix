# MiniSuffix

## Installation

### Debian

Add this line to your application's Gemfile:

```ruby
gem 'mini_suffix'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mini_suffix

## Usage

```
require 'mini_suffix'

MiniSuffix.domain("meta.discourse.org")
# => "discourse.org"

MiniSuffix.domain("www.careers.gov.sg")
# => "careers.gov.sg"
```

##Benchmark

```
# benchmark/bench.rb

PublicSuffix.domain total allocated memsize: 6574255
PublicSuffix.domain total retained memsize: 1133266
MiniSuffix.domain total allocated memsize: 8000
MiniSuffix.domain total retained memsize: 0

Warming up --------------------------------------
 PublicSuffix.domain     4.503k i/100ms
   MiniSuffix.domain    77.107k i/100ms
Calculating -------------------------------------
 PublicSuffix.domain     47.521k (± 2.2%) i/s -    238.659k in   5.024541s
   MiniSuffix.domain    875.595k (± 3.8%) i/s -      4.395M in   5.027237s

Comparison:
   MiniSuffix.domain:   875594.7 i/s
 PublicSuffix.domain:    47521.2 i/s - 18.43x  slower
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/discourse/mini_suffix.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
