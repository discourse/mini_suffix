# MiniSuffix

## Installation

### Debian
`sudo apt-get install libpsl-dev`

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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/discourse/mini_suffix.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
