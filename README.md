# Keyutils

This is a wrapper for keyutils library, providing idiomatic Ruby interface for
Linux kernel keyring.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'keyutils'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install keyutils

## Usage

```ruby
require 'keyutils'
include Keyutils

ring = Key.find 'keyring', 'myring'
puts "My very secret key is #{ring['secret:key']}"

new_session = Keyring::Session.join
ring = new_session.add 'keyring', 'newring', nil
ring['foo'] = 'bar'
puts `keyctl show @s`

# prints:
# Keyring
#  496820604 --alswrv   1000  1001  keyring: _ses
#  145266026 --alswrv   1000  1001   \_ keyring: newring
#  169205931 --alswrv   1000  1001       \_ user: foo
```

## Contributing

We welcome contributions of all kinds to this repository. For instructions on
how to get started and descriptions of our development workflows, please see our
[contributing guide](CONTRIBUTING.md).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

