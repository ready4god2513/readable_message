# ReadableMessage

Print out exceptions (or any message that responds to :class, :message, and/or :backtrace) to the console
surrounded by "*" * 80.  Makes it a bit easier to debug errors printed to standard out.

## Installation

Add this line to your application's Gemfile:

    gem 'readable_message'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install readable_message

## Usage

`obj.to_readable(*args)` // Takes a string or any object that responds to :class, :message, and/or :backtrace
or
`ReadableMessage::Formatter.new(obj, *args).to_s`

where `*args` is a list of methods that should be called on the object (to_s, to_i, backtrace, etc)

The output to console will appear something as-

  ********************************************************************************
  String
  "hi"
  ********************************************************************************


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
